class AddFkToModels < ActiveRecord::Migration
  def change
    add_column :ideas, :event_id, :integer
    add_column :authors, :idea_id, :integer
    add_index :ideas, :event_id
    add_index :authors, :idea_id
  end
end
