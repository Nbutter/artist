json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :city, :country, :website_url, :image_url, :image_url2
  json.url venue_url(venue, format: :json)
end
