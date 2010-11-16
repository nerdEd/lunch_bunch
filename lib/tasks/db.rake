namespace :db do
  desc 'Fill the database with handy test data'
  task :populate => :environment do
    restaurants = [
      "Urban Flats",
      "Al's Pizza",
      "Atomic Flying Fish",
      "Beach Bud's Chicken",
      "Beachside Seafood",
      "Buddha's Belly",
      "Carribee Key",
      "Chizu",
      "Colonel Mustard's",
      "Delicomb",
      "Dwight's",
      "Fionn MacCool's",
      "Five Guys",
      "Hala",
      "Hot Dog Hut",
      "Jason's Deli",
      "Larry's Subs",
      "Mellow Mushroom",
      "Over the Ditch Cafe",
      "Paco's Tacos",
      "Panera",
      "Ragtime",
      "Safe Harbor",
      "Salt Life",
      "Simply Tasty Thai",
      "Sun Deli",
      "Sundog",
      "TacoLu",
      "Thai Room",
    ]

    restaurants.each do |name|
      Restaurant.create! :name => name
    end

    User.create! :name => "Matthew Conway", :email => "himself@mattonrails.com", :password => "password"

  end
end
