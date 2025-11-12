# frozen_string_literal: true

case RUBY_VERSION
when '3.2.5', '3.3.6', '3.4.1'
  appraise "ruby-#{RUBY_VERSION}_activerecord72" do
    source 'https://rubygems.org' do
      gem 'activerecord', '~> 7.2.0'
    end
  end

  appraise "ruby-#{RUBY_VERSION}_activerecord80" do
    source 'https://rubygems.org' do
      gem 'activerecord', '~> 8.0.0'
    end
  end

  appraise "ruby-#{RUBY_VERSION}_activerecord81" do
    source 'https://rubygems.org' do
      gem 'activerecord', '~> 8.1.0'
    end
  end
else
  raise "Unsupported Ruby version #{RUBY_VERSION}"
end
