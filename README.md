# ae_check_migrations_load_silently
This gem checks that migrations do not change the database checksum when they are loaded; via code defined outside of a method. This is to ensure that 
migrations do not affect the database when they are load, which can lead to some very unexpected database states and often can't be rolled back.

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

## More Information
To further understand the issues that can be caused by migrations with code that changes the database on load vs on up/down migration, read this TWL! 
https://sites.google.com/a/appfolio.com/classic-eng/general-engineering-resources/today-we-learned/2020-05-20---migrations-must-not-affect-database-on-load
