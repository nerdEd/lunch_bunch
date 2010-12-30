def sign_in(user=Fabricate(:user))
  Capybara.reset_sessions!
  visit destroy_user_session_path
  visit new_user_session_path
  fill_in "Email", :with => user.email
  fill_in "Password", :with => "password"
  click "Sign in"
end
alias :sign_in_as :sign_in
