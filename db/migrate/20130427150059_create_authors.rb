class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nome
      t.string :link
      t.string :nivel
      t.text :bio

      t.timestamps
    end
  end
end
