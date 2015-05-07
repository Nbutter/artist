json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :title, :year_started, :year_completed, :exhibition_id, :mediums, :height, :width, :depth
  json.url artwork_url(artwork, format: :json)
end
