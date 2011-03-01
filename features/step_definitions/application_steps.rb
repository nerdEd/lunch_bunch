Then "I should see a map" do
  page.should have_css('img[src^="http://maps.google.com/maps/api/"]')
  page.should have_css("img[alt=#{@it.name}]")
end
