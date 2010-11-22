Feature: User leaves an outing

  In order to change my mind
  As a user on an outing's view page
  I want to leave an outing

  - click an outing on the list
  - goes to outing page
  - click leave
  - I am not on the list

  Scenario: one of multiple outing users left
    Given I am signed in
    And I am on the home page
    And the following user:
      | id   | 100            |
      | name | Matthew Conway |
    And the following restaurant:
      | name | Delicomb |
    And that restaurant has the following outing:
      | user_id | 100 |
    And that outing has the following users:
      | name          |
      | Frank Sinatra |
    When I am on the home page
    And I follow "Delicomb" within "#outings"
    And I press "Join"
    And I should see "Matthew Conway" within "#outing_users"
    When I press "Leave"
    Then I should see "You have left this outing."
