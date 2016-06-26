json.array!(@pratos) do |prato|
  json.extract! prato, :id, :valor, :nome, :cod_barras, :tipo_pratoB, :tipo_bebida, :ml_bebida, :tipo_pratoC
  json.url prato_url(prato, format: :json)
end
