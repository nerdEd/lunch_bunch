Given /^I am signed in$/ do
  @user ||= Fabricate(:user)
  visit root_path
  click_link_or_button "Sign In"
  fill_in 'Username or Email address', :with => @user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end

Then "I should see a map" do
  page.should have_css('img[src^="http://maps.google.com/maps/api/"]')
  page.should have_css("img[alt=#{@it.name}]")
end
