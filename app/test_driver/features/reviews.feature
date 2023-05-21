Feature: See the reviews about a job offer
  Scenario: See the reviews about the first job offer.
    Given I am on the Home Page
    And I open the drawer
    And I select "Search Page"
    And I tap the first job offer
    And I tap "See more reviews"
    Then I see "Review added successfully!" on the screen