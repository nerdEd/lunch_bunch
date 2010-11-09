class Outing < ActiveRecord::Base
  belongs_to :restaurant

  default_scope :include => :restaurant, :order => 'restaurants.name'
end
