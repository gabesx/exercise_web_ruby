@login @exercise-login
Feature: Login functionality on SauceDemo

  @check-valid-credential
  Scenario: Successful login with valid credentials
    Given navigate to SauceDemo login page
    When client enter valid credentials
    And client click on the login button
    And alert locked appears
#    Then client should be redirected to the products page