# Saves page to place specified at name inside of
# test.rb definition of:
#   config.integration_test_render_dir = Rails.root.join("spec", "render")
# NOTE: you must pass "js:" for the scenario definition (or else you'll see that render doesn't exist!)
#module Capybara

#  def render_page(name)
#  png_name = name.strip.gsub(/\W+/, '-')
#  path = File.join(Rails.application.config.integration_test_render_dir, "#{png_name}.png")
#  page.driver.render(path)
#  end


#  def page!
#  save_and_open_page
#  end

#  RSpec.configure do |config|
#    config.include Capybara, :type => :request
#  end

#end