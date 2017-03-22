Feature: Housing's home page UI for different screen resolutions
@1024x600
Scenario:Checking for resolution for 1024x726(Desktop)
Given I am on housing.com home page
When I resize the window
Then Page is adjusting as per resolution
