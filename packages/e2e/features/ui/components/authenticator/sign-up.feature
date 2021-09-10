Feature: Sign Up

  Create a new user in the Amazon Cognito UserPool by passing the new user’s email address, password, and other attributes.

  Background:
    Given I'm running the example "ui/components/authenticator/sign-up"
    And I click "Create account"
    Then I see "Create a new account"

  @next @react @vue @angular @skip
  Scenario: Sign up with a new username & password
    When I type a new username
    And I type a new password
    And I type a new confirm password
    And I type the email "test@example.com"
    And I type the phone number "+15558675309"
    And I click the "Create Account" button
    Then I see "Confirm Sign Up"
    And I see "Confirmation Code"

  @next @react @vue @angular
  Scenario: Username field autocompletes username
    And "Username" field autocompletes "username"

  @next @react @vue @angular
  Scenario: Password fields autocomplete "new-password"
    And "Password" field autocompletes "new-password"
    And "Confirm Password" field autocompletes "new-password"
