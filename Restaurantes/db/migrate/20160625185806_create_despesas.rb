class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.string :nome
      t.float :valor
      t.date :vencimento
      t.references :restaurante, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
