Feature: Log In
  As a user
  I want to use my credentials to login the system
  So I can login the system

  Scenario: user can open login page via menu
    Given home page of web application
    When I click log in menu item on home page
    Then login page should be displayed