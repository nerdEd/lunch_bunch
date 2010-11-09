class CreateRestaurants < ActiveRecord::Migration

  def self.up
    create_table :restaurants do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :restaurants
  end

end
