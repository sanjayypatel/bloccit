source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

#add pry for alternative to IRB/rails console
gem 'pry-rails', :group => :development

# Use sqlite3 for development and PostgreSQL for production on Heroku
 group :production do
   gem 'pg'
   gem 'rails_12factor'
 end
 group :development do
   gem 'sqlite3'
 end


# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Include Twitter Bootstrap - Sass for styling
gem 'bootstrap-sass'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Provide seed data for development.
gem 'faker'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Use Devise for user authentication
gem 'devise'

# Use Figaro for securely storing env variables
gem 'figaro', '1.0'

# Pundit to manage authorization of tasks
gem 'pundit'

# Use Redcarpet for Post Markdown
gem 'redcarpet'

# Use CarrierWave for image uploading and MiniMagick for image processing
gem 'carrierwave'
gem 'mini_magick'

# Use Fog to integrate S3 storage for images
gem 'fog'

# Use will_paginate for topics pagination
gem 'will_paginate', '~> 3.0.5'

# Use RSpec for automated tests
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

# Use Capybara for Feature Specs
group :test do
  gem 'capybara'
end
