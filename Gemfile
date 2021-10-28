source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'


gem 'bootsnap', '>= 1.4.4', require: false

gem 'kimurai'

group :development, :test do
  gem "pry-byebug"
end

group :development do
  
  gem 'web-console', '>= 4.1.0'
  
  gem 'chromedriver-helper'
  gem "selenium-webdriver"
  gem 'capybara'
  gem 'webdrivers'


  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'

  gem 'spring'
end

group :test do
  gem "simplecov"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
