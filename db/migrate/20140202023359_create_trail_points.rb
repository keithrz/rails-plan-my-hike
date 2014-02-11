class CreateTrailPoints < ActiveRecord::Migration
  def change
    create_table :trail_points do |t|
      t.string :name, null: true
      t.text :description, null: true
      # mile_pct are miles expressed in cents, ie. value of 127 = 1.27 miles
      t.integer :position_mile_pct, null: false
      t.integer :elevation_ft, null: false

      t.belongs_to :trail_section, index: true

      t.timestamps
    end
  end
end
