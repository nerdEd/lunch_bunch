Feature: User browses restaurant list
  In order to choose a restaurant for lunch
  As a user
  I want to see a list of all local restaurants

  Scenario:
    Given the following restaurants:
      | name               |
      | Atomic Flying Fish |
      | Burrito Gallery    |
      | Mellow Mushroom    |
    And I am on the home page
    Then I should see "Atomic Flying Fish"
    And I should see "Burrito Gallery"
    And I should see "Mellow Mushroom"
