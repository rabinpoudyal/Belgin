source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Ruby version
ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise', '~> 4.3'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'activeadmin', '~> 1.1'
gem 'chartkick', '~> 2.2', '>= 2.2.4'
gem 'groupdate', '~> 3.2'
gem 'impressionist', '~> 1.6'
gem 'trix', '~> 0.11.0'
gem 'rails-settings-cached', '~> 0.6.6'
gem 'friendly_id', '~> 5.1.0'
gem 'bootsnap', '~> 1.1', '>= 1.1.5'
gem 'turbolinks', '~> 5.0.0'
#gem 'webpacker', '~> 3.0', '>= 3.0.2'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'
  gem 'rspec-rails', '~> 3.6'
  gem 'capybara', '~> 2.15', '>= 2.15.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem "rails-erd"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
