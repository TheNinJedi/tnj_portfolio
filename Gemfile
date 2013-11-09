source 'https://rubygems.org'

gem 'rails', '3.2.15'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'simple_form'
gem 'devise'
gem 'figaro'
gem 'pry-rails'
gem 'paperclip', "~> 3.0"
gem 'jquery-rails'
gem 'aws-sdk', '~> 1.5.7'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'powder'
  gem 'xray-rails'
  gem 'guard'
  gem 'rb-fsevent', require: false
  gem 'guard-pow'
  gem 'guard-minitest'
  gem 'guard-livereload'
  gem "rack-livereload"
  #gem 'ruby_gntp'
end

group :development, :test do
  gem 'minitest-rails', github: 'blowmage/minitest-rails'
  gem 'minitest-colorize'
  gem 'factory_girl_rails', ">= 4.2.0"
  gem 'ffaker'
  gem 'letter_opener'
  # gem "minitest-matchers"
  # gem "email_spec" - is dependent on minitest-matchers - research these to help with 
  # testing mailers - make sure to require them in test_helper.rb
end

group :test do
    
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "bootstrap-sass", github: "thomas-mcdonald/bootstrap-sass", branch: '3'
  gem 'uglifier', '>= 1.0.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
