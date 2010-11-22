Given /^I am signed in$/ do
  @user ||= Fabricate(:user)
  visit root_path
  click_link_or_button "Sign In"
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end
