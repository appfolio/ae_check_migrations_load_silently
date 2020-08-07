# ae_check_migrations_load_silently
This gem checks that migrations do not change the database checksum when they are loaded. This is to ensure that 
migrations do not accidentally affect the database on load. 

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'ae_check_migrations_load_silently'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ae_check_migrations_load_silently
