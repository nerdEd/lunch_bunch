@wip
Feature: User schedules an outing in the future

  In order to plan lunch outings ahead of time
  As a user
  I want to schedule outings not occurring today

  * click a restaurant on the list
  * goes to create outing page
  * select a day in the future
  * create puts outing in the scheduled section

  Background:
    Given the following restaurants:
      | name      |
      | TacoLu    |
      | Five Guys |
    And I am signed in
    And I am on the home page

  Scenario: no scheduled outings
    Then I should see "No outings have been scheduled."

  Scenario: schedule an outing
    When I follow "TacoLu"
    Then I should see "Create Outing"
    And I should see "TacoLu"

    When I select "December" from "outing_event_date_2i"
    And I select "25" from "outing_event_date_3i"
    And I fill in "What time?" with "12:00 PM"
    And I press "Create Outing"
    Then I should see "Your outing is scheduled for December 25"
    And I should see "TacoLu - December 25, 12:00 PM" within "#scheduled"

  Scenario: schedule an outing that also occurs today
    When I follow "Five Guys" within "#restaurants"
    And I select "December" from "outing_event_date_2i"
    And I select "1" from "outing_event_date_3i"
    And I fill in "What time?" with "12:00 PM"
    And I press "Create Outing"

    And I follow "Five Guys" within "#restaurants"
    And I select "December" from "outing_event_date_2i"
    And I select "25" from "outing_event_date_3i"
    And I fill in "What time?" with "12:00 PM"
    And I press "Create Outing"
    Then I should see "Your outing is scheduled for December 25"
