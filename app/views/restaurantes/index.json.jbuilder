json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nome, :tipo
  json.url restaurante_url(restaurante, format: :json)
end
