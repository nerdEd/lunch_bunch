class AddLocationToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :street, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
  end

  def self.down
    remove_column :restaurants, :state
    remove_column :restaurants, :city
    remove_column :restaurants, :street
  end
end
