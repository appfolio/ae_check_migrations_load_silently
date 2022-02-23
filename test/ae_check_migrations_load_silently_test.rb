# frozen_string_literal: true

require 'test_helper'

class AeCheckMigrationsLoadSilentlyTest < Minitest::Test
  class TestClass < Minitest::Test
    include AeCheckMigrationsLoadSilently

    attr_accessor :assertions

    def initialize(assertions = 0)
      @assertions = 0
    end
  end

  def test_that_it_has_a_version_number
    refute_nil AeCheckMigrationsLoadSilently::VERSION
  end

  def test_check_all_migrations_load_silently__tables_modified_blank
    test_class = TestClass.new
    test_class.expects(:get_database_checksums).twice.returns([['table1', '123456']]).then.returns([['table1', '123456']])
    test_class.expects(:load_all_migrations).returns(nil)

    assert_nil test_class.check_all_migrations_load_silently
  end

  def test_check_all_migrations_load_silently__tables_modified_present
    test_class = TestClass.new
    test_class.expects(:get_database_checksums).twice.returns([['table1', '123456']]).then.returns([['table1', '456789']])
    test_class.expects(:load_all_migrations).returns(nil)
    error_message = <<~MSG
      The following tables were modified when the migration classes were
      loaded. This is not compatible with our release process. This is likely
      because the migration has database modifying code on the
      class rather than inside a method.
      table1
    MSG
    test_class.expects(:flunk).with(error_message)

    test_class.check_all_migrations_load_silently
  end
end
