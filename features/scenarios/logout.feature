@logout @exercise-logout @exercise
Feature: Logout functionality on SauceDemo

  @check-logout-flow
  Scenario: Successful logout
    Given navigate to SauceDemo login page
    And client login using "standard_user"
    And client click on the login button
    And client should be redirected to the products page
    And all product items should be displayed on the products page
    When client logout
    Then client navigate to homepage
