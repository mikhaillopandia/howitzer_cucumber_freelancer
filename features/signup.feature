Feature: Sign up
  As a user
  I want to sign up to the system
  So I can login with a new account

  @smoke
  Scenario: user can open sign up page via menu
    Given home page of web application
    When I click Sign Up menu item on home page
    Then I should be redirected to sign up page

  Scenario: user can sign up with correct credentials as employee
    Given sign up page of web application
    When I fill form on sign up page with new data
    And I submit form on sign up page
    Then skills page should be displayed
    And I should receive confirmation instruction email
    When I confirm sing up from confirmation instruction email
    Then I should see following text on verify page:
      """
      Success! Your email address is now verified.
      """
    When I click Logo menu item on verify page
    Then jobs page should be displayed
    And I navigate to dashboard page
    And I should be logged in the system

  Scenario: user can sign up with correct credentials as employer
    Given sign up page of web application
    When I fill form on sign up page with new data
    And I select looking to hire radio on sign up page
    And I submit form on sign up page
    Then onboard page should be displayed
    And I should receive confirmation employer instruction email
    When I confirm employer sing up from confirmation employer instruction email
    And I navigate to dashboard page
    Then I should see following text on dashboard page:
      """
      I would like to verify my phone number.
      """
    And I should be logged in the system

  @p1
  Scenario: user can not sign up with blank data
    Given sign up page of web application
    When I fill form on sign up page with blank data
    And I submit form on sign up page
    Then I should see following text on sign up page:
    """
    Please enter an email address
    """
    And I should see following text on sign up page:
    """
    Please enter a username
    """
    And I should see following text on sign up page:
    """
    Please enter a password
    """
    And I should see following text on sign up page:
    """
    Please select a role
    """

  @p1
  Scenario: user can not sign up with incorrect data
    Given sign up page of web application
    When I fill form on sign up page with not email data
    Then I should not be logged in the system
    When I fill form on sign up page with short password
    And I submit form on sign up page
    Then I should not be logged in the system
    And I should see following text on sign up page:
     """
     Please enter a valid email address.
     """
    And I should see following text on sign up page:
     """
     Password must be 6 characters minimum
     """
