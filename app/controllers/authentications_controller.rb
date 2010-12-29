class AuthenticationsController < ApplicationController
  expose(:authentications) { current_user.authentications if current_user }
  expose(:authentication) { current_user.authentications.find(params[:id]) }
  expose(:omniauth) { request.env['omniauth.auth'] }

  def create
    auth = Authentication.where(:provider => omniauth['provider'], :uid => omniauth['uid']).first
    if auth
      flash[:notice] = "Signed in successfully."
      sign_in_and_redirect(:user, auth.user)
    elsif current_user
      current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
      redirect_to authentications_url, :notice => "Authentication successful."
    else
      create_user_and_sign_in
    end
  end

  def destroy
    authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end

  private

  def create_user_and_sign_in
    user = User.new
    user.apply_omniauth(omniauth)
    if user.save
      flash[:notice] = "Signed in successfully."
      sign_in_and_redirect(:user, user)
    else
      session[:omniauth] = omniauth.except('extra')
      redirect_to new_user_registration_url
    end
  end

end
