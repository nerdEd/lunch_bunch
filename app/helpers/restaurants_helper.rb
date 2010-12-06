module RestaurantsHelper

  def outing_item(outing)
    "#{link_to outing.restaurant.name, restaurant_outing_path(outing.restaurant, outing)} - \
    #{outing.event_time}".html_safe
  end

  def scheduled_outing_item(outing)
    "#{link_to outing.restaurant.name, restaurant_outing_path(outing.restaurant, outing)} - \
    #{outing.event_date.to_s(:pretty)}, #{outing.event_time}".html_safe
  end

end
