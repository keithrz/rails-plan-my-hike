class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :abbrev
      t.text :description

      t.timestamps
    end
  end
end
