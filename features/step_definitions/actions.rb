And(/^I search "([^"]*)"$/) do |send_text|
  find(:css, '#lst-ib').click
  find('#lst-ib').send_keys send_text, :enter
end
