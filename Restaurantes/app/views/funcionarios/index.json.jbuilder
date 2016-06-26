json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :salario, :endereco, :cpf, :tipo_funcionario, :formacao_gerente, :adicional_garcom, :especializacao_cozinheiro, :cnpj, :restaurante_id
  json.url funcionario_url(funcionario, format: :json)
end
