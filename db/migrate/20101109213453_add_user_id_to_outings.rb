class AddUserIdToOutings < ActiveRecord::Migration

  def self.up
    change_table :outings do |t|
      t.belongs_to :user
      t.index :user_id
    end
  end

  def self.down
    change_table :outings do |t|
      t.remove :user
    end
  end

end
