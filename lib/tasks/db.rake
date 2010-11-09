namespace :db do
  desc 'Fill the database with handy test data'
  task :populate => :environment do
    restaurants = [
      'Atomic Flying Fish',
      'Delicomb',
      'Mellow Mushroom',
      'Over the Ditch Cafe',
      'TacoLu',
    ]

    restaurants.each do |name|
      Restaurant.create! :name => name
    end
  end
end
