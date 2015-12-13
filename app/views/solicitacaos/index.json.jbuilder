json.array!(@solicitacaos) do |solicitacao|
  json.extract! solicitacao, :id, :numero, :valor, :comida_id
  json.url solicitacao_url(solicitacao, format: :json)
end
