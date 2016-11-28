source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Handles user authentication
# gem 'devise'
# Some devise setup you must do manually if you haven't yet:
#   1. Ensure you have defined default url options in your environments files. Here
#      is an example of default_url_options appropriate for a development environment
#      in config/environments/development.rb:
#        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
#      In production, :host should be set to the actual host of your application.
#   2. Ensure you have defined root_url to *something* in your config/routes.rb.
#      For example:
#        root to: "home#index"
#   3. Ensure you have flash messages in app/views/layouts/application.html.erb.
#      For example:
#        <p class="notice"><%= notice %></p>
#        <p class="alert"><%= alert %></p>
#   4. You can copy Devise views (for customization) to your app by running:
#        rails g devise:views
# The rails generate devise:views users command creates the directory
# /app/views/users with all the devise views, such as login form, registration
# form, etc. If you want customize these files and have Devise use them you must
# set config.scoped_views to true in the configuration file, located at /app/config/initializers/devise.rb.

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-rails'
gem 'money-rails'
gem 'carrierwave'
gem 'rmagick'
gem 'faker'
gem 'googlebooks','~> 0.0.9'
gem 'httparty', '~> 0.13.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'factory_girl'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
