class Restaurante < ActiveRecord::Base
	has_many :funcionario
	has_many :mesa
	has_many :prato
	validates :cnpj, presence: true
	validates :nome, presence: true
	validates :endereco, presence: true
	validates :cidade, presence: true

end
