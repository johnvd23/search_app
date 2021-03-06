json.array!(@addresses) do |address|
  json.extract! address, :street, :street2, :city, :state, :zip, :contact_id
  json.url address_url(address, format: :json)
end