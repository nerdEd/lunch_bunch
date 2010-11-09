class Restaurant < ActiveRecord::Base
  has_many :outings

  default_scope :order => 'name'

end
