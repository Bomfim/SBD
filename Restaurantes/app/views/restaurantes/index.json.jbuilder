json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :cnpj, :nome, :endereco, :cidade
  json.url restaurante_url(restaurante, format: :json)
end
