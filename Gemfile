source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'rails', '~> 6.1.0'
gem 'pg', '~> 1.1'
# gem 'puma', '~> 5.0'
gem 'puma', '~> 5.6', '>= 5.6.2'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'faker', '~> 2.16'

gem 'reports_kit', '~> 0.7.1'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'json', '~> 2.5', '>= 2.5.1'
# gem 'jquery-rails'
gem 'jquery-rails', '~> 4.4'

# gem 'i18n', '~> 1.8', '>= 1.8.10'
gem 'i18n', '~> 1.9', '>= 1.9.1'
gem 'kaminari', '~> 1.2', '>= 1.2.1'

gem 'rest-client', '~> 2.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
