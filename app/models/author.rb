class Author < ActiveRecord::Base
  attr_accessible :bio, :link, :nivel, :nome, :sexo, :email

  belongs_to :idea
end
