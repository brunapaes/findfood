json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :numero, :valor
  json.url pedido_url(pedido, format: :json)
end
