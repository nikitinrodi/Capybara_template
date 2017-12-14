When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
  stamp = Time.now.strftime("%Y%m%d%H%M%S");
  save_screenshot("screen-#{stamp}.png")
end

And(/^I debug$/) do
  binding.pry
end
