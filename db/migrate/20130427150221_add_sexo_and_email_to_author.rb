class AddSexoAndEmailToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :email, :string
    add_column :authors, :sexo, :string
  end
end
