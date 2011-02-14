Given /^"([^"]*)" has started an outing at "([^"]*)"$/ do |user, restaurant|
  user = User.find_by_name(user)
  restaurant = Fabricate(:restaurant, :name => restaurant)
  @outing = Fabricate(:outing, :user => user, :restaurant => restaurant)
  @outing.users << user
end
