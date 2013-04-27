class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :nome
      t.text :descricao
      t.string :link
      t.string :keywords
      t.string :repositorio

      t.timestamps
    end
  end
end
