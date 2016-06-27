class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :quantidade_cadeiras
      t.string :tipo
      t.string :cnpj
      t.references :restaurante, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
