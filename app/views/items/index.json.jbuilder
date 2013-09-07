json.array!(@items) do |item|
  json.extract! item, :name, :picture, :value, :user_id
  json.url item_url(item, format: :json)
end
