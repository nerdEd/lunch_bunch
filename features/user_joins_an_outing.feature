Feature: User joins an outing

  In order to have lunch with my friends
  As a user
  I want to join an outing

  - click an outing on list
  - goes to outing page
  - click join
  - outing page shows me on the list

  Background:
    Given the following user:
      | id | 1 |
    And the following restaurant:
      | name | Delicomb |
    And that restaurant has the following outing:
      | user_id | 1 |

  Scenario: user joins
    Given I am signed in
    And I am on the home page
    When I follow "Delicomb" within "#outings"
    And I press "Join"
    Then I should see "You have joined this outing!"

