Given /^"([^"]*)" has started an outing at "([^"]*)"$/ do |user, restaurant|
  user = User.find_by_name(user)
  restaurant = Fabricate(:restaurant, :name => restaurant)
  @outing = Fabricate(:outing, :user => user, :restaurant => restaurant)
  @outing.users << user
end

When /^I select today for the event date$/ do
  steps %Q{
    When I select "#{Date.today.strftime('%B')}" from "outing_event_date_2i"
    And I select "#{Date.today.day}" from "outing_event_date_3i"
  }
end
