json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :id, :venue_id, :title, :subtitle, :exhibition_type, :press_url, :curator, :start_month, :finish_month, :year, :exhibition_image_url, :exhibition_image_url2
  json.url exhibition_url(exhibition, format: :json)
end
