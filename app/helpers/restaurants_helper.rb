module RestaurantsHelper

  def outing_item(outing)
    "#{link_to outing.restaurant.name, restaurant_outing_path(outing.restaurant, outing)} - \
    #{outing.event_time}".html_safe
  end

  def scheduled_outing_item(outing)
    "#{link_to outing.restaurant.name, restaurant_outing_path(outing.restaurant, outing)} - \
    #{outing.event_date.to_s(:pretty)}, #{outing.event_time}".html_safe
  end

  def map(restaurant)
    head = "http://maps.google.com/maps/api/staticmap?markers="
    address = restaurant.address
    format = "jpg"
    tail = "&format=#{format}&size=350x250&sensor=false"
    uri = head + URI.escape(address) + tail

    image_tag uri, :alt => restaurant.name
  end

end
