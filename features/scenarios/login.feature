@login @exercise-login @exercise
Feature: Login functionality on SauceDemo

  @check-standard-user-credential
  Scenario: Successful login with valid credentials
    Given navigate to SauceDemo login page
    When client login using "standard_user"
    And client click on the login button
    Then client should be redirected to the products page
    And all product items should be displayed on the products page

  @check-problem-user-credential
  Scenario: Successful login with problem user
    Given navigate to SauceDemo login page
    When client login using "problem_user"
    And client click on the login button
    Then client should be redirected to the products page

  @check-performance-glitch-user-credential
  Scenario: Successful login with performance glitch user
    Given navigate to SauceDemo login page
    When client login using "performance_glitch_user"
    And client click on the login button
    Then client should be redirected to the products page

  @check-error-user-credential
  Scenario: Successful login with error user credential
    Given navigate to SauceDemo login page
    When client login using "error_user"
    And client click on the login button
    Then client should be redirected to the products page

  @check-visual-user-credential
  Scenario: Successful login with visual user credential
    Given navigate to SauceDemo login page
    When client login using "visual_user"
    And client click on the login button
    Then client should be redirected to the products page

  @check-locked-out-user-credential
  Scenario: Failed to login with locked user
    Given navigate to SauceDemo login page
    When client login using "locked_out_user"
    And client click on the login button
    And alert "locked" appears

  @check-incorrect-credential
  Scenario: Failed tp Login with incorrect credential
    Given navigate to SauceDemo login page
    When client login using "invalid_password"
    And client click on the login button
    Then alert "wrong password" appears

  @check-empty-credential
  Scenario: Login with incorrect credential
    Given navigate to SauceDemo login page
    When client login using "empty_credential"
    And client click on the login button
    Then alert "empty credential" appears