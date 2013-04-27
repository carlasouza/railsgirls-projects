class Idea < ActiveRecord::Base
  attr_accessible :descricao, :keywords, :link, :nome, :repositorio
end
