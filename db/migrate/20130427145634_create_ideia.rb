class CreateIdeia < ActiveRecord::Migration
  def change
    create_table :ideia do |t|
      t.string :nome
      t.text :descricao
      t.string :link
      t.string :keywords
      t.string :repositorio

      t.timestamps
    end
  end
end
