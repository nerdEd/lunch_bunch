namespace :db do
  desc 'Fill the database with handy test data'
  task :populate => :environment do
    restaurants = [
      ["Al's Pizza", "303 Atlantic Boulevard", "Jacksonville"],
      ["Atomic Flying Fish", "309 Atlantic Boulevard", "Jacksonville"],
      ["Beach Bud's Chicken", "1289 Penman Road", "Jacksonville"],
      ["Beach Hut", "1281 3rd Street South", "Jacksonville"],
      ["Beachside Seafood", "120 3rd Street South", "Jacksonville"],
      ["Buddha's Belly", "301 10th Avenue North", "Jacksonville"],
      ["Burrito Gallery", "21 East Adams Street", "Jacksonville"],
      ["Carribee Key", "100 1st Street", "Neptune Beach"],
      ["Chizu", "1253 Penman Road", "Jacksonville Beach"],
      ["Colonel Mustard's", "1012 Margaret Street #3", "Jacksonville"],
      ["Delicomb", "1131 3rd Street North", "Jacksonville Beach"],
      ["Europeen Street Cafe", "1704 San Marco Boulevard", "Jacksonville"],
      ["Five Guys", "311 3rd Street North", "Jacksonville Beach"],
      ["Hot Dog Hut", "1439 3rd Street", "Jacksonville Beach"],
      ["Jason's Deli", "3rd Street South", "Jacksonville Beach"],
      ["Larry's Subs", "4479 Deerwood Lake Pkwy # 1", "Jacksonville"],
      ["Mellow Mushroom", "9734 Deer Lake Ct # 1", "Jacksonville"],
      ["Over the Ditch Cafe", "13799 Beach Boulevard", "Jacksonville"],
      ["Paco's Tacos", "333 1st Street", "Jacksonville Beach"],
      ["Panera", "2104 3rd Street South", "Jacksonville Beach"],
      ["Sala Pad Thai", "10769 Beach Blvd # 10", "Jacksonville"],
      ["Salt Life", "11655 Central Pkwy # 315", "Jacksonville"],
      ["Simply Tasty Thai", "2292 Mayport Road", "Atlantic Beach"],
      ["Sun Deli", "1011 South Third St", "Jacksonville Beach"],
      ["Sundog", "207 Atlantic Boulevard", "Atlantic Beach"],
      ["TacoLu", "1183 Beach Boulevard", "Jacksonville Beach"],
      ["Thai Room", "1286 3rd Street South", "Jacksonville Beach"],
      ["Urban Flats", "330 A1A North", "Ponte Vedra Beach"]
    ]

    restaurants.each do |restaurant|
      Restaurant.create! :name => restaurant[0],
                         :street => restaurant[1],
                         :city => restaurant[2],
                         :state => "FL"
    end

  end
end
