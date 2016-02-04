json.array!(@adventures) do |adventure|
  json.extract! adventure, :id, :destination, :time, :user_id
  json.url adventure_url(adventure, format: :json)
end
