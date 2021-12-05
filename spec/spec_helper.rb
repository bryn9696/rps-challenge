ENV['RACK_ENV'] = 'test'

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'sinatra'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helper'

Capybara.app = Rps


# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
