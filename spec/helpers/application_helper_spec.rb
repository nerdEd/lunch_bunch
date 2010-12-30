require 'spec_helper'

describe ApplicationHelper do

  describe '#display_username_or_email' do
    context 'with a username' do
      let(:user) { Fabricate(:user_with_username) }

      it 'should display the username' do
        helper.display_username_or_email(user).should == "@#{user.username}"
      end

    end

    context 'with an email address' do
      let(:user) { Fabricate(:user) }

      it 'should display the email address' do
        helper.display_username_or_email(user).should == user.email
      end
    end
  end

  describe '#avatar_for' do
    context 'with an email address' do
      let(:user) { Fabricate(:user, :email => 'himself@mattonrails.com') }

      it 'should return a gravatar' do
        avatar_for(user).should == 'http://gravatar.com/avatar/0b30c6aa6b9027d124ca028325b80b15.png'
      end
    end

    context 'when signed in with Twitter' do
      let(:user) { Fabricate(:user_with_username) }

      it 'should return a Twitter avatar' do
        avatar_for(user).should == 'http://a3.twimg.com/profile_images/1179520456/blue_beanie_normal.jpg'
      end
    end
  end

end
