Feature: User edits their account info
  In order to keep my account details accurate
  As a user
  I want to edit my account info

  - Anywhere on the site
  - Click "Settings"
  - Take me to the "Change your information" page
  - Change username
  - Click "Update"
  - I see my new username in the header

  Background:
    Given I am signed in
    And I am on the home page
    When I follow "Settings"

  Scenario:
    When I fill in "Name" with "Dude Bro Guy"
    And I press "Update"
    Then I should see "You updated your account successfully."
