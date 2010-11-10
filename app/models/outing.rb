class Outing < ActiveRecord::Base
  validates_uniqueness_of :restaurant_id
  belongs_to :restaurant

  default_scope :include => :restaurant, :order => 'restaurants.name'
end
