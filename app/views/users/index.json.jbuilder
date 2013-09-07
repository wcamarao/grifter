json.array!(@users) do |user|
  json.extract! user, :name, :email, :fbuid, :latitude, :longitude
  json.url user_url(user, format: :json)
end
