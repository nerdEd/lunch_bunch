class RestaurantsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  expose(:restaurants) { Restaurant.all }
  expose(:restaurant)
  expose(:outings) { Outing.today }
  expose(:scheduled_outings) { Outing.scheduled }

   def create
     if restaurant.save
       flash[:notice] = "#{restaurant.name} was added to the list."
       redirect_to root_path
     else
       flash[:alert] = "That restaurant already exists."
       redirect_to root_path
     end
   end

end
