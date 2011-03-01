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
    Given the following restaurant:
      | name | Delicomb |
    And I am signed in
    And I am on the home page

  @wip
  Scenario:
    When I follow "Delicomb"
    And I select today for the event date
    And I press "Create Outing"
    And show me the page
    And I follow "Delicomb" within "#outings"
    Then I should see "Outing at Delicomb"
    And I should see "Matthew Conway started this outing."
