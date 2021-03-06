source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'sqlite3', :group => [:development, :test]

group :production do
  gem 'thin'
  gem 'pg'
  gem 'rails_12factor'
end

gem 'haml-rails'

gem 'meta-tags', :require => 'meta_tags'
gem 'bourbon'
gem 'neat', '~> 1.5.0'
gem 'font-awesome-rails', '~> 4.0.3'

gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'

gem 'carrierwave'
gem 'rmagick'

gem 'pry'

gem 'enumerize'

gem 'foundation-rails'

group :test, :development do
  gem 'spring-commands-rspec'
  gem 'factory_girl_rails', '>= 4.2'
  gem 'rspec-rails', '~> 3.0.0.beta2'
  gem 'rspec-mocks', '~> 3.0.0.beta2'
  gem 'launchy'
  gem 'ffaker'
  gem 'letter_opener'
end

group :development do
  gem 'guard'
  gem 'guard-rspec', '~> 4.2.2', require: false
end