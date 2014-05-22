json.array!(@phones) do |phone|
  json.extract! phone, :phone, :phone_type, :contact_id
  json.url phone_url(phone, format: :json)
end