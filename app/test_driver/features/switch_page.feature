Feature: Test the Navigation Bar
  Scenario: Switch from Home Page to Search Page
    Given I am on the Home Page
    And I open the drawer
    And I select "Search Page"
    Then I should be on the Search Page