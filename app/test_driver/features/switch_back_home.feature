Feature: Switching between pages
  Scenario: Switching back to Home Page
    Given I am on a random Page
    And I open the drawer
    When I select "Home Page"
    Then I should be on the Home Page