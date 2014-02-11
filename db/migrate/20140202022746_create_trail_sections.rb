class CreateTrailSections < ActiveRecord::Migration
  def change
    create_table :trail_sections do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.integer :mile_pct, null: false
      t.integer :elevation_diff_ft, null: false

      t.belongs_to :trail, index: true, null: false

      t.timestamps
    end
  end
end
