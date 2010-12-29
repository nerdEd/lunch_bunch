class User < ActiveRecord::Base
  include Gravtastic

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  has_many :authentications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  gravtastic :size => 40,
             :default => "identicon"

  def apply_omniauth(omniauth)
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  # overriding Devise::Models::Validatable#password_required?
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end
end
