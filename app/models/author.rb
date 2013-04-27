class Author < ActiveRecord::Base
  attr_accessible :bio, :link, :nivel, :nome, :sexo, :email

  validates_presence_of :nome
  validates_inclusion_of :sexo, in: ['female', 'male']
  validates_format_of :nome, with: /^[a-zA-Z]+$/



  belongs_to :idea
end
