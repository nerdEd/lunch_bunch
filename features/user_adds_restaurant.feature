Feature: User adds a restaurant

  In order to start an outing at a restaurant not on the list
  As an authenticated user
  I want to add a restaurant to the list

  Background:
    Given I am signed in
    And I am on the home page

  Scenario: new restaurant
    When I follow "Add a Restaurant"
    Then I should see "Create Restaurant"

    When I fill in "Name" with "Burrito Gallery"
    And I press "Create Restaurant"
    Then I should see "Burrito Gallery was added to the list"
    And I should see "Burrito Gallery" within "#restaurants"

  Scenario: restaurant already exists
    Given the following restaurant:
      | name | Burrito Gallery |
    When I follow "Add a Restaurant"
    And I fill in "Name" with "Burrito Gallery"
    And I press "Create Restaurant"
    Then I should see "That restaurant already exists."
