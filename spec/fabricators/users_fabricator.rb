Fabricator(:user) do
  name { "Matthew Conway" }
  email { Faker::Internet.email }
  password "password"
  password_confirmation "password"
end
