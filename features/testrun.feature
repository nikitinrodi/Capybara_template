Feature: test run

  @selenium @test_run
  Scenario: Go to google
    When I visit "http://www.google.com"
    Then I should see logo
    And I should see search field
    When I search "test"
    Then I should see first result "test"
