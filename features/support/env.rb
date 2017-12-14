require 'rubygems'
require 'bundler/setup'
require 'pry-byebug'
require 'capybara/cucumber'
require 'capybara/spec/test_app'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.javascript_driver = :selenium
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 12
Capybara.ignore_hidden_elements = false



Capybara.register_driver :poltergeist do |app|
  options = {
      :timeout => 1000,
      :extensions => [],
      :js_errors => false,
      :debug => false,
      :window_size => [1600, 1200],
      :inspector => true,
      :phantomjs_options => ['--load-images=no',
                             '--debug=no',
                             '--proxy-type=none',
                             '--disk-cache=false',
                             '--ignore-ssl-errors=yes',
                             '--ssl-protocol=tlsv1',
                             '--web-security=false'],
  }
  Capybara::Poltergeist::Driver.new(app, options)
end


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end

#Before '@selenium' do
#  page.driver.browser.manage.window.resize_to(1600, 1200)
#end


