require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'features/web_helpers'

require File.join(File.dirname(__FILE__), '..', 'rps.rb')

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

ENV['RACK_ENV'] = 'test'

Capybara.app = RPS
