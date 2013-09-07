json.array!(@trades) do |trade|
  json.extract! trade, :user_id, :item_id, :status
  json.url trade_url(trade, format: :json)
end
