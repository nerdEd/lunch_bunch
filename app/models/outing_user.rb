class OutingUser < ActiveRecord::Base
  belongs_to :outing
  belongs_to :user

  validates_associated :outing
end
