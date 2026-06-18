# frozen_string_literal: true

if Gem::Requirement.new(['>= 3.3', '< 4.1']).satisfied_by?(Gem::Version.new(RUBY_VERSION))
  appraise "ruby-#{RUBY_VERSION}_activerecord72" do
    source 'https://appfolio.jfrog.io/artifactory/api/gems/appfolio-ae_check_migrations_load_silently-gem/' do
      gem 'activerecord', '~> 7.2.0'
    end
  end

  appraise "ruby-#{RUBY_VERSION}_activerecord80" do
    source 'https://appfolio.jfrog.io/artifactory/api/gems/appfolio-ae_check_migrations_load_silently-gem/' do
      gem 'activerecord', '~> 8.0.0'
    end
  end

  appraise "ruby-#{RUBY_VERSION}_activerecord81" do
    source 'https://appfolio.jfrog.io/artifactory/api/gems/appfolio-ae_check_migrations_load_silently-gem/' do
      gem 'activerecord', '~> 8.1.0'
    end
  end
else
  raise "Unsupported Ruby version #{RUBY_VERSION}"
end
