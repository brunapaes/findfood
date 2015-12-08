json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :nome, :email, :senha
  json.url cadastro_url(cadastro, format: :json)
end
