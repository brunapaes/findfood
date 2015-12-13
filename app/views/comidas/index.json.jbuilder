json.array!(@comidas) do |comida|
  json.extract! comida, :id, :nome, :tipo, :valor
  json.url comida_url(comida, format: :json)
end
