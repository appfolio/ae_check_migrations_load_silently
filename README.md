# AeCheckMigrationsLoadSilently

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

```bash
bundle
```

Or install it yourself as:

```bash
gem install ae_check_migrations_load_silently
```
