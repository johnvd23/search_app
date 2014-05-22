json.array!(@people) do |person|
  json.extract! person, :name, :user_id
  json.url person_url(person, format: :json)
end