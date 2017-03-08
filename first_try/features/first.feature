Feature: Users must be able to search for Housing.com using Google.

Scenario: Search for a housing.com.

Given I have entered "housing.com" into the query.

When I click "search"

Then I should see some results
