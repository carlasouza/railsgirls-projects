class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :city
      t.date :data
      t.string :country

      t.timestamps
    end
  end
end
