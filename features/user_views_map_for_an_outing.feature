Feature: User views map for an outing
  In order to determine where an outing is located
  As a user
  I want to see a map on an outing page

  - On the home page
  - Click on an outing
  - Goes to the outing page
  - I see a Google Map with a pin on that outing's restaurant

  Scenario: creating an outing
    Given the following restaurant:
      | name | Delicomb |
    And I am signed in
    And I am on the home page
    When I follow "Delicomb"
    Then I should see a map
