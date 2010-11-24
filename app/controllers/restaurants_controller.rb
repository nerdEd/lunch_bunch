class RestaurantsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  expose(:restaurants) { Restaurant.all }
  expose(:outings) { Outing.today }

end
