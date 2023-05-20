Feature: After validating the input data, I should log in and be redirected to the home page.
  Scenario: Successful login
    Given I am on the Login Page
    When I enter "stubuser082@gmail.com" into the "emailfield" field
    And I enter "123456" into the "passfield" field
    And I tap the "signInBtn" button
    Then I should be on the home_page
