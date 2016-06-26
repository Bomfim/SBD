class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.float :salario
      t.string :endereco
      t.string :cpf
      t.string :tipo_funcionario
      t.string :formacao_gerente
      t.float :adicional_garcom
      t.string :especializacao_cozinheiro
      t.string :cnpj
      t.references :restaurante, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
