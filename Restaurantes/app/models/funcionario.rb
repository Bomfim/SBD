class Funcionario < ActiveRecord::Base
  belongs_to :restaurante

  validates :nome, presence: true
  validates :salario, presence: true
  validates :endereco, presence: true
  validates :cpf, presence: true
  validates :tipo, presence: true
  validates :cnpj, presence: true
  validates :restaurante, presence: true

end
