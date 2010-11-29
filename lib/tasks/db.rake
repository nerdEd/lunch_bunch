namespace :db do
  desc 'Fill the database with handy test data'
  task :populate => :environment do
    restaurants = [
      "Al's Pizza",
      "Atomic Flying Fish",
      "Beach Bud's Chicken",
      "Beach Hut",
      "Beachside Seafood",
      "Buddha's Belly",
      "Burrito Gallery",
      "Carribee Key",
      "Chizu",
      "Colonel Mustard's",
      "Delicomb",
      "Dwight's",
      "Europeen Street Cafe",
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
      "Sala Pad Thai",
      "Salt Life",
      "Simply Tasty Thai",
      "Sun Deli",
      "Sundog",
      "TacoLu",
      "Thai Room",
      "Urban Flats",
    ]

    restaurants.each do |name|
      Restaurant.create! :name => name
    end

  end
end
