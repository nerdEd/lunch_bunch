class OutingsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create, :join, :leave, :update]

  expose(:restaurant) { Restaurant.find(params[:restaurant_id]) }
  expose(:outings) { restaurant.outings }
  expose(:outing)

  def create
    outing.user = current_user
    outing.users << current_user
    if outing.save
      if outing.event_date > Date.today
        flash[:notice] = "Your outing is scheduled for #{outing.event_date.strftime("%B %d")}"
      else
        flash[:notice] = "Your outing has been created."
      end
      respond_with outing, :location => root_path
    else
      flash[:alert] = outing.errors.full_messages
      redirect_to root_path
    end

  end

  def update
    if outing.update_attributes(params[:outing])
      flash[:notice] = 'Outing updated'
      redirect_to root_path
    else
      render :edit
    end
  end

  def join
    outing.users << current_user
    flash[:notice] = "You have joined this outing!"
    redirect_to restaurant_outing_path(restaurant, outing)
  end

  def leave
    outing_user = OutingUser.find(
      :first, :conditions => {:outing_id => outing.id, :user_id => current_user.id}
    )
    outing_user.destroy

    if outing.users.empty?
      outing.destroy
      flash[:notice] = "The outing at #{outing.restaurant.name} was cancelled."
      redirect_to root_path
    else
      flash[:notice] = "You have left this outing."
      redirect_to restaurant_outing_path(restaurant, outing)
    end

  end

end
