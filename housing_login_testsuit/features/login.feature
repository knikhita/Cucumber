
Feature: Selecting desired city & Login successfully to housing.com



  @mail_login
  Scenario: Selecting login option
    Given I am on housing home page
    When I click on Pune City
    Then Pune city gets selected
    When I click on Login option
    And I checked if modal gets opened
    And I select Sign In option
    Then Email & Password fields are shown
    When I Entered Email id
    And I entered password
    And I click on Login button
    Then User get successfully logged in
    When I click on name plate dropdown
    Then Dropdown gets opened
    When I click on Logout option
    Then User gets logout

    @phone_login
    Scenario: Selecting phone number option
      Given I am on housing home page
      When I click on Pune City
      Then Pune city gets selected
      When I click on Login option
      And I checked if modal gets opened
      And I select Sign In option
      Then Phone Number & Password fields are shown
      When I Entered phone number
      And I entered password
      And I click on Login button
      Then User get successfully logged in
