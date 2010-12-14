class User < ActiveRecord::Base
  include Gravtastic

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  gravtastic :size => 40,
             :default => "identicon"

end
