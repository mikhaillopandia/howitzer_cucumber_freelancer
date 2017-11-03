Feature: Sign up
  As a user
  I want to sign up to the system
  So I can login with a new account

  @smoke
  Scenario: user can open sign up page via menu
    Given home page of web application
    When I click sign up menu item on home page
    Then I should be redirected to sign up page

  Scenario: user can sign up with correct credentials as employee
    Given sign up page of web application
    When I fill form on sign up page with new data
    And I submit form on sign up page
    Then onboard page should be displayed

    And I should receive confirmation instruction email
    When I confirm sing up from confirmation instruction email
    Then I should see following text on verify page:
      """
      Success! Your email address is now verified.
      """
    When I click logo menu item on verify page
    Then jobs page should be displayed
    And I should be logged in the system

  Scenario: user can sign up with correct credentials as employer
    Given sign up page of web application
    When I fill form on sign up page with new data
    And I select looking to hire radio on sign up page
    And I submit form on sign up page
    Then onboard page should be displayed

    And I should receive confirmation employer instruction email
    When I confirm employer sing up from confirmation employer instruction email
    Then I should see following text on verify page:
      """
      Success! Your email address is now verified.
      """
    And I should be redirected to home page
    And I should be logged in the system