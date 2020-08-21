require 'active_record'
require 'minitest'

module AeCheckMigrationsLoadSilently
  include Minitest::Assertions

  def check_all_migrations_load_silently
    before_checksums = get_database_checksums
    load_all_migrations
    after_checksums = get_database_checksums

    tables_modified = (
    (before_checksums - after_checksums).map(&:first) +
      (after_checksums - before_checksums).map(&:first)
    ).uniq

    if tables_modified.present?
      error_message = <<~MSG
        The following tables were modified when the migration classes were
        loaded. This is not compatible with our release process. This is likely
        because the migration has database modifying code on the
        class rather than inside a method.
        #{tables_modified.sort.join("\n")}
      MSG

      flunk error_message
    end
  end

  private

  def get_database_checksums
    tables_sql = ActiveRecord::Base.connection.tables.sort.join(", ")
    checksum_sql = "CHECKSUM TABLE #{tables_sql}"
    ActiveRecord::Base.connection.execute(checksum_sql).to_a
  end

  def load_all_migrations
    migrations_to_process = Dir['db/migrate/20*.rb']
    migrations_to_process.each do |migration|
      begin
        load migration
      rescue StandardError => e
        msg = <<~MSG
          #{self.class.name}: #{migration} failed to load. This is likely because the migration has code that is defined
          on the top level class, instead of in a method.
          #{e.message}
        MSG
        flunk msg
      end
    end
  end
end

