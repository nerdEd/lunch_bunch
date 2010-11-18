class Outing < ActiveRecord::Base
  validates_uniqueness_of :restaurant_id
  belongs_to :restaurant
  belongs_to :user

  has_many :outing_users
  has_many :users, :through => :outing_users

  default_scope :include => :restaurant, :order => 'restaurants.name'
end
