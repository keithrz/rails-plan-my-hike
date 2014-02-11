class CreateTrailResupplies < ActiveRecord::Migration
  def change
    create_table :trail_resupplies do |t|
      t.string :name, null: false
      t.text :description, null: true
      # distance from the Trail point to the resupply point
      t.integer :offset_mile_pct, null: false

      t.belongs_to :trail_point, index: true

      t.timestamps
    end
  end
end
