json.array!(@territories) do |territory|
  json.extract! territory, :city, :description, :coordinates
  json.url territory_url(territory, format: :json)
end