Feature: Search jobs for a specific location
  Scenario: Search jobs for a specific location
    Given I am on the home page
    When I search for a job in "Aveiro"
    Then I should see the jobs in Aveiro