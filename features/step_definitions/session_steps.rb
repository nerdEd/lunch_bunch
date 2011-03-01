Given /^I am signed in$/ do
  @me ||= Fabricate(:user)
  visit root_path
  click_link_or_button "Sign In"
  fill_in 'Username or Email address', :with => @me.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end

When /^I sign in as "([^"]*)"$/ do |email|
  @me = User.find_by_email(email)
  @me.password ||= 'password'
  Given 'I am signed in'
end

Given /^I am (?:logg|sign)ed in as "([^"]*)"$/ do |email|
  Given %Q|I sign in as "#{email}"|
end
