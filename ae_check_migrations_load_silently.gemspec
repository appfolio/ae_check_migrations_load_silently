# frozen_string_literal: true

require_relative 'lib/ae_check_migrations_load_silently/version'

Gem::Specification.new do |spec|
  spec.name          = 'ae_check_migrations_load_silently'
  spec.version       = AeCheckMigrationsLoadSilently::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = 'AppFolio'
  spec.email         = 'opensource@appfolio.com'
  spec.description   = 'Loads migration files and compares the database state before and after loading to ensure it remains unchanged. This helps catch migrations that unintentionally alter the database simply by being loaded.'
  spec.summary       = 'Checks that migrations do not modify the database when loaded.'
  spec.homepage      = 'https://github.com/appfolio/ae_check_migrations_load_silently'
  spec.license       = 'MIT'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|LICENSE.txt|ae_check_migrations_load_silently\.gemspec)}] }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('< 4.1')
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.add_dependency('activerecord', ['>= 7.2', '< 8.2'])
  spec.add_dependency('minitest', ['>= 5.8', '< 7'])
end
