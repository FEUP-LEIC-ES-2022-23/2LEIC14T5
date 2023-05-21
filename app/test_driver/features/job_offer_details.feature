Feature: See the details of a job offer
  Scenario: See the details of the first job offer
    Given I am on the Home Page
    And I open the drawer
    And I select "Search Page"
    And I tap the first job offer
    Then I see the details of the first job offer