Feature: user creates outing

  In order to eat lunch with my friends
  As a user
  I want to create an outing

  * click a restaurant on list
  * goes to create outing page
  * create puts outing on restaurant page

  Background:
    Given the following restaurant:
      | name | Delicomb |
    And I am on the home page

  Scenario:  no outings yet today
    Then I should see "No outings yet today."

  Scenario:  create an outing
    When I follow "Delicomb"
    Then I should see "Create Outing"
    And I should see "Delicomb"

    When I press "Create Outing"
    Then I should see "Your outing has been created."
    And I should see "Delicomb" within "#outings"

  Scenario:  create an outing, but cancel
    When I follow "Delicomb"
    Then I should see "Create Outing"
    And I should see "Delicomb"

    When I follow "cancel"
    Then I should be on the home page
