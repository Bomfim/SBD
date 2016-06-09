class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :cnpj
      t.string :nome
      t.string :endereco
      t.string :cidade

      t.timestamps null: false
    end
  end
end
