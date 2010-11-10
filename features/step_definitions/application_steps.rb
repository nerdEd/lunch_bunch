Given /^I am signed in$/ do
  @user ||= Fabricate(:user)
  visit root_path
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end
