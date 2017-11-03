Feature: Log In
  As a user
  I want to use my credentials to login the system
  So I can login the system

#  Scenario: user can open login page via menu
#    Given login page of web application
#    And I am user
#    When I fill form on login page
#    And I submit form on login page
#    Then skills page should be displayed

#  Scenario: user can perform sign up
#    Given signup page of web application
#    When I fill form on signup page
#    And I submit form on signup page
#    Then skills page should be displayed

 Scenario: user can perform sign up
    Given signup page of web application
    When I fill form on sign up page with new data
    #And I am looking for work
    And I submit form on signup page
    Then skills page should be displayed


   Scenario: test
     Given home page of web application
     When I click logo menu item on home page
     Then home page should be displayed