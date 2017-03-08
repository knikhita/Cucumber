Feature: Demo Login
Scenario: Register on demo page without mail id
  Given I am on demo home page
  When enter blank details for register
  Then email error should be shown
