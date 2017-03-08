Feature: Checking EVENTS page


Scenario:Selecting desired city And Event card
Given I navigate to housing.com
When I select Pune City
And URL get changed
And I scroll to event section
And I click on Event card
Then its redirecting to event page on same tab
