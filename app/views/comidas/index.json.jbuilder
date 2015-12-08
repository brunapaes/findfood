json.array!(@comidas) do |comida|
  json.extract! comida, :id, :codigo, :nome, :tipo, :preco
  json.url comida_url(comida, format: :json)
end
