Feature: User who owns a event can outing an event
  In order to change plans on the fly
  As an outing organizer 
  I want to edit an existing outing

  Background:
    Given the following user:
      | name  | Frank          |
      | email | frank@test.net |
    And "Frank" has started an outing at "Delicomb"

  Scenario: Editing an existing outing
    Given I sign in as "frank@test.net"
    And I am on the homepage
    And I follow "Edit"
    When  I fill in "What time?" with "3:00 PM"
    And   I press "Update Outing"
    Then  I should see "Outing updated"

  Scenario: User who doesn't own event shouldn't see edit link
    Given the following user:
      | email | whatevs@slsdev.net |
    Given I am signed in as "whatevs@slsdev.net"
    And I am on the homepage
    Then I should not see "Edit"
