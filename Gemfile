source "https://rubygems.org"

ruby "3.2.8"

gem "rails", "7.2.3"
gem "mysql2", "~> 0.5"
gem "puma", "~> 6.0"
gem "sprockets-rails"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
