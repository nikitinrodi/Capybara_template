# frozen_string_literal: true
require 'rspec/expectations'
require "capybara/spec/spec_helper"
require "pry"

RSpec.configure do |config|
  Capybara::SpecHelper.configure(config)
  config.filter_run_including focus_: true unless ENV['TRAVIS']
  config.run_all_when_everything_filtered = true
end

module CapybaraExtension
  def drag_by(right_by, down_by)
    base.drag_by(right_by, down_by)
  end
end

module CapybaraSeleniumExtension
  def drag_by(right_by, down_by)
    resynchronize { driver.browser.action.drag_and_drop_by(native, right_by, down_by).perform }
  end
end

::Capybara::Selenium::Node.send :include, CapybaraSeleniumExtension
::Capybara::Node::Element.send :include, CapybaraExtension