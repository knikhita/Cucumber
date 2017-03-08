@Login_Modal
Feature: opening login modal
Scenario: opening login modal
  Given I am on housing's home page
  When I click on Login option
  Then Login modal gets opened

@Actual_Login
  Scenario: Login on login modal
    Given I am on housing's Login modal
    When I enter mail id
    And I enter password
    Then I press login button
