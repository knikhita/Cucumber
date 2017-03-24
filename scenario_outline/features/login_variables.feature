@login_run
Feature: Test Login

Scenario Outline: Login Success and Failure
    Given I navigate to the mock application
    When I try to login with '<type>' credentials
    Then I should see that I logged in '<status>'

Examples:
    | type      | status        |
    | mail     | successfully      |
    | phone   | successfully    |
