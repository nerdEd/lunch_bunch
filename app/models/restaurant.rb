class Restaurant < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :outings

  default_scope :order => 'name'

end
