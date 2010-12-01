class AddEventDateToOutings < ActiveRecord::Migration
  def self.up
    add_column :outings, :event_date, :date
  end

  def self.down
    remove_column :outings, :event_date
  end
end
