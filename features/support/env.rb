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
BROWSER = ENV["BROWSER"]

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "firefox_headless"
  @driver = :selenium_headless
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Escolha um perfil para @driver na configuração em cucumber.yml"
end

Capybara.configure do |config|
  config.default_driver = @driver
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
