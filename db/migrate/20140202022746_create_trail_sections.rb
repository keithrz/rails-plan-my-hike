class CreateTrailSections < ActiveRecord::Migration
  def change
    create_table :trail_sections do |t|
      t.string :name
      t.text :description
      t.integer :mile_pct
      t.integer :elevation_diff_ft

      t.belongs_to :trail, index: true

      t.timestamps
    end
  end
end
