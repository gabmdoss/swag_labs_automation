require 'rspec'
require 'capybara/cucumber'
require 'allure-cucumber'
require 'site_prism'
require 'cucumber'
require 'faker'
require 'pry'
require 'pry-byebug'
require 'date'

def environment(path)
  YAML.load_file(File.join(Dir.pwd, "#{path}"))
end

CONFIG = environment("features/support/config/#{ENV["CONFIG"]}")
DATA = environment("features/support/data/#{ENV["CONFIG"]}")

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30)
 end

Capybara.configure do |config|
  config.default_driver = :selenium 
  config.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
end

RSpec.configure do |config| 
  config.include Capybara::DSL  
  config.include Capybara::RSpecMatchers
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
