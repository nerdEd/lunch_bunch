class CreateOutings < ActiveRecord::Migration
  def self.up
    create_table :outings do |t|
      t.belongs_to :restaurant
      t.timestamps
    end
  end

  def self.down
    drop_table :outings
  end
end
