Feature: Testng the logout
  Scenario: Successful logout
    Given I am on a random Page
    And I open the drawer
    And I select "Sign Out"
    Then I should be on the Login Page
