class AddEventTimeToOutings < ActiveRecord::Migration
  def self.up
    add_column :outings, :event_time, :string
  end

  def self.down
    remove_column :outings, :event_time
  end
end
