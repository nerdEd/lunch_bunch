Fabricator(:user) do
  name { "Matthew Conway" }
  email { Faker::Internet.email }
  password "password"
  password_confirmation "password"
end

Fabricator(:user_with_username, :class_name => :user) do
  name { Faker::Name.name }
  username { Faker::Internet.user_name }
  avatar_url "http://a3.twimg.com/profile_images/1179520456/blue_beanie_normal.jpg"
  password "password"
  password_confirmation "password"
end
