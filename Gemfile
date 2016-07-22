source 'https://rubygems.org'

gem 'rails', '4.2.5.1'
gem 'pg'
gem 'rails-api'
gem 'spring', :group => :development
gem 'active_model_serializers', '~> 0.8.3'
gem 'httparty'
gem 'kaminari'
gem 'api-pagination'
gem 'paranoia', '~> 2.0'
gem 'puma'
gem 'newrelic_rpm'

group :development do
  gem 'annotate'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
end

group :test do
  gem 'webmock'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'rubycritic', :require => false
  gem 'brakeman'
  gem 'json-schema'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'shoulda-matchers'
  gem 'rubocop-checkstyle_formatter', require: false
  gem 'rubocop', require: false
end

ruby '2.3.0'
