# coding: utf-8
require 'minitest'

Gem::Specification.new do |spec|
  spec.name          = 'ae_check_migrations_load_silently'
  spec.version       = "0.2.1"
  spec.authors       = ['Appfolio']

  spec.homepage      = 'https://github.com/appfolio/ae_check_migrations_load_silently'
  spec.summary       = %q{Check migrations do not affect database on load}
  spec.description   = %q{Check migrations do not affect database on load}

  spec.files         = Dir['{app,lib}/**/*']
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord'
end
