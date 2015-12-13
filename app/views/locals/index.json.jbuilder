json.array!(@locals) do |local|
  json.extract! local, :id, :latitude, :longitude, :elevacao
  json.url local_url(local, format: :json)
end
