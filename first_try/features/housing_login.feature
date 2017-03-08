Feature: Housing Login validations
Scenario: Login with incorrect password
  Given I am on housing's Login modal
  When I enter incorrect details for password
  Then I should get Incorrect Email/Password Combination message
