Then(/^I should see logo$/) do
  expect(page).to have_css("img[src*='googlelogo_color_272x92dp.png']")
  end

And(/^I should see search field$/) do
  within(:css, '#gs_lc0') do
    expect(page).to have_css('#lst-ib')
  end
end

And(/^I should see first result "([^"]*)"$/) do |first_result|
  expect(page).to have_text first_result
end
