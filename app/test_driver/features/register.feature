Feature:  After validating the input data, I just need to verify my email account
  Scenario: Register in an account
    Given I am on the Login Page
    When I tap "Register Now"
    And I enter my email
    And I enter my password
    And I fill the "confirm_password_register" field with "password123"
    And I tap the "Sign Up" button
    Then I need to verify my email account