module ApplicationHelper

  def display_username_or_email(user)
    "Welcome, #{user.username || user.email}!"
  end

  def avatar_for(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png"
    end
  end
end
