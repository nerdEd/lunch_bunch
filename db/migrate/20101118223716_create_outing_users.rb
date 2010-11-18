class CreateOutingUsers < ActiveRecord::Migration
  def self.up
    create_table :outing_users do |t|
      t.belongs_to :outing
      t.belongs_to :user
      t.timestamps
    end

    change_table :outing_users do |t|
      t.index :outing_id
      t.index :user_id
    end
  end

  def self.down
    change_table :outing_users do |t|
      t.remove_index :user_id
      t.remove_index :outing_id
    end

    drop_table :outing_users
  end
end
