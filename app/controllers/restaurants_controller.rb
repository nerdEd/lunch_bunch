class RestaurantsController < ApplicationController

  expose(:restaurants) { Restaurant.all }

end
