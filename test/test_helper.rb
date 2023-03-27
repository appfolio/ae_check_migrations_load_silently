# frozen_string_literal: true

require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

if ENV['WITH_COVERAGE'] == 'true'
  require 'simplecov'
  SimpleCov.start do
    enable_coverage :branch
    add_filter %r{\A/test}
  end
end

require 'ae_check_migrations_load_silently'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/minitest'

Mocha.configure do |config|
  config.stubbing_non_existent_method = :prevent
  config.strict_keyword_argument_matching = true
end

MiniTest::Reporters.use! unless ENV['RM_INFO']
