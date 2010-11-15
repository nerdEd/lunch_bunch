Feature: User views an outing

  In order to find details about an outing
  As a user
  I want to view an individual outing

  - On the home page
  - Click on an outing
  - On the outing's page
  -- Name of the restaurant
  -- Name of the user who started the outing

  Background:
    Given I am signed in
    Given the following restaurant:
      | name | Delicomb |
    And I have the following outing at Delicomb:
      | name | Delicomb |
    And that outing has the following user:
      | name | Matthew Conway |
    When I am on the home page

  Scenario:
    When I follow "Delicomb" within "#outings"
    Then I should see "Delicomb"
    And I should see "Matthew Conway started this outing."
