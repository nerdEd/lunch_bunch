class OutingsController < ApplicationController

  expose(:restaurant) { Restaurant.find(params[:restaurant_id]) }
  expose(:outings) { restaurant.outings }
  expose(:outing)

  def create
    outing.user = current_user
    if outing.save
      flash[:notice] = "Your outing has been created."
      respond_with outing, :location => root_path
    else
      flash[:alert] = "That outing has already been created!"
      redirect_to root_path
    end

  end

  def join
    outing.users << current_user
    flash[:notice] = "You have joined this outing!"
    redirect_to restaurant_outing_path(restaurant, outing)
  end

end
