class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name, null: false
      t.string :abbrev, null: false
      t.text :description, null: true

      t.timestamps
    end
  end
end
