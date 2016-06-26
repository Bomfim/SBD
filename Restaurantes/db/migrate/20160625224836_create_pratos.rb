class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.float :valor
      t.string :nome
      t.integer :cod_barras
      t.string :tipo_pratoB
      t.string :tipo_bebida
      t.string :ml_bebida
      t.string :tipo_pratoC

      t.timestamps null: false
    end
  end
end
