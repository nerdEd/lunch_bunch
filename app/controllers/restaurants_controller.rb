class RestaurantsController < ApplicationController

  expose(:restaurants) { Restaurant.all }
  expose(:outings) { Outing.where(["created_at >= ?", Date.today]) }

end
