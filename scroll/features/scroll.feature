@scrolling_down_the_page_to_bottom
Feature: Checking visual scrolling
Scenario: opening housing home page
  Given I am on housing's home page
  And   I select City mumbai
  When I scroll the page to the bottom
  Then I will see footer of the page
