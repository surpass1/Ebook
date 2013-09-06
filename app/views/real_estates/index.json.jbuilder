json.array!(@real_estates) do |real_estate|
  json.extract! real_estate, :name, :location, :seller, :size, :price, :image_path
  json.url real_estate_url(real_estate, format: :json)
end
