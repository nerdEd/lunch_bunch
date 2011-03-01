Feature: User leaves an outing

  In order to change my mind
  As a user on an outing's view page
  I want to leave an outing

  - click an outing on the list
  - goes to outing page
  - click leave
  - I am not on the list

  Scenario: one of multiple outing users left
    Given the following users:
      | name          | email              |
      | Wesley Willis | wesley@example.com |
      | Jello Biafra  | jello@example.com  |
    And "Jello Biafra" has started an outing at "Delicomb"
    And I sign in as "wesley@example.com"
    When I follow "Delicomb" in the "Today's Outings" section
    And I press "Join"
    Then I should see "You have joined this outing!"
    When I press "Leave"
    Then I should see "You have left this outing."
