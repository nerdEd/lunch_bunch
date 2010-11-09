class RestaurantsController < ApplicationController

  expose(:outings) { Outing.all }
  expose(:restaurants) { Restaurant.all }

end
