class CreateTrailPoints < ActiveRecord::Migration
  def change
    create_table :trail_points do |t|
      t.string :title
      t.text :description
      # mile_pct are miles expressed in cents, ie. value of 127 = 1.27 miles
      t.integer :position_mile_pct
      t.integer :elevation_ft

      t.belongs_to :trail_section, index: true

      t.timestamps
    end
  end
end
