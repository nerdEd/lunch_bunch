require 'uri'

class Restaurant < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :state
  has_many :outings

  default_scope :order => 'name'

  def address
    [street, city, state].join(", ")
  end

end
