Before do
  Capybara.reset_sessions!
  #page.driver.browser.manage.window.resize_to(1600, 1200)
end


After do |scenario|
  if scenario.failed?
    puts "

         .:.      .:.         .:.
       _oOoOo   _oOoOo       oOoOo_
      [_|||||  [_|||||       |||||_]
        |||||    |||||       |||||
  jgs   ~~~~~    ~~~~~       ~~~~~

OOOPS, SOMETHING WRONG!
THIS TEST CASE IS FAILED!
Check details below (check test case description, tables and values)
"
    stamp = Time.now.strftime("%Y%m%d%H%M%S");
    save_screenshot("screen-#{stamp}.png")
  end

end
