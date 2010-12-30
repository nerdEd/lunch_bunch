class User < ActiveRecord::Base
  include Gravtastic

  attr_accessible :name, :login, :username, :email,
    :password, :password_confirmation, :remember_me, :avatar_url
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

  def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
    data = access_token['user_info']
    if user = User.find_by_username(data['nickname'])
      user
    else # Create an user with a stub password.
      User.create!(
        :name => data['name'],
        :username => data['nickname'],
        :password => Devise.friendly_token[0,20],
        :avatar_url => data['image']
      )
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.twitter_data']
        user.username = data['user_info']['nickname']
        user.name = data['user_info']['name']
        user.avatar_url = data['user_info']['image']
      end
    end
  end

  def update_with_password(params={})
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    update_attributes(params)
  end

  protected

  def self.find_for_database_authentication(conditions)
    login = conditions.delete(:login)
    where(conditions).where(["username = :value OR email = :value", { :value => login }]).first
  end

end
