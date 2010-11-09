class OutingsController < ApplicationController

  expose :outing
  expose :restaurant

  def create
    if restaurant.outings.create outing
      flash[:notice] = "Your outing has been created."
    end

    respond_with outing, :location => root_path
  end

end
