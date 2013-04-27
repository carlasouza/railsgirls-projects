class Idea < ActiveRecord::Base
  attr_accessible :descricao, :keywords, :link, :nome, :repositorio

  belongs_to :event
  has_many :authors
end
