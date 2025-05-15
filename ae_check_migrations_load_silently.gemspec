# frozen_string_literal: true

require_relative 'lib/ae_check_migrations_load_silently/version'

Gem::Specification.new do |spec|
  spec.name          = 'ae_check_migrations_load_silently'
  spec.version       = AeCheckMigrationsLoadSilently::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = 'AppFolio'
  spec.email         = 'opensource@appfolio.com'
  spec.description   = 'Check migrations do not affect database on load.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/appfolio/ae_check_migrations_load_silently'
  spec.license       = 'MIT'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|LICENSE.txt|.*gemspec)}] }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('< 3.5')
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.add_dependency('activerecord', ['>= 7', '< 8.1'])
  spec.add_dependency('minitest', ['>= 5.8', '< 6'])
end
