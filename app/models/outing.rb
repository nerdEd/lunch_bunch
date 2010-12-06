class Outing < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  has_many :outing_users
  has_many :users, :through => :outing_users

  validate :unique_today, :on => :create
  validates_presence_of :restaurant_id

  default_scope :include => :restaurant, :order => ('event_date, restaurants.name')
  scope :today, lambda { where(["DATE(event_date) = ?", Date.today]) }
  scope :scheduled, lambda { where(["DATE(event_date) > ?", Date.today]) }
  scope :for_restaurant, lambda { |restaurant| where(:restaurant_id => restaurant.id) }

  def unique_today
    if Outing.today.for_restaurant(restaurant).present?
      errors.add(:base, "Looks like there's already a group there today")
    end
  end
end
