class CreateTripSections < ActiveRecord::Migration
  def change
    create_table :trip_sections do |t|
      # all durations are stored as hour integers
      t.integer :duration_hours, null: false
      ##
      # hiking details
      ##
      t.integer :extra_mile_pct, null: true
      t.integer :extra_elevation_diff_ft, null: true
      t.decimal :different_pace_mph, null: true
      # hours of rest in the middle of section, ie. on trail
      t.integer :rest_hours, null: true

      t.belongs_to :trip, index: true
      t.belongs_to :trail_section, index: true

      t.timestamps
    end
  end
end
