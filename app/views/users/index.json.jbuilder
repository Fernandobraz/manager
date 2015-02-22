json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :birthday
  json.url user_url(user, format: :json)
end
