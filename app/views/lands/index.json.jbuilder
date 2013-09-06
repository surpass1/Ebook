json.array!(@lands) do |land|
  json.extract! land, :name, :location, :seller, :size, :price, :image
  json.url land_url(land, format: :json)
end
