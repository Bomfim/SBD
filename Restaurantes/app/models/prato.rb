class Prato < ActiveRecord::Base
	belongs_to :restaurante

	validates :cod_barras, presence: true
	validates :nome, presence: true
	validates :valor, presence: true
end
