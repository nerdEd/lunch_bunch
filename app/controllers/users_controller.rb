class UsersController < ApplicationController

  expose(:restaurant) { Restaurant.find(params[:restaurant_id]) }
  expose(:outings) { restaurant.outings }
  expose(:outing) { outings.find(params[:outing_id]) }

  def create

    Outing.last.users << current_user
  end

end
