json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :login, :senha, :foto, :nome, :cidade, :estado, :email, :descricao
  json.url usuario_url(usuario, format: :json)
end
