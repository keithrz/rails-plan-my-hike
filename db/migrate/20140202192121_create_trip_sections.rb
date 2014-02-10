class CreateTripSections < ActiveRecord::Migration
  def change
    create_table :trip_sections do |t|
      # all durations are stored as hour integers
      t.integer :duration_hours
      ##
      # hiking details
      ##
      t.integer :extra_mile_pct
      t.integer :extra_elevation_diff_ft
      t.decimal :different_pace_mph
      # hours of rest in the middle of section, ie. on trail
      t.integer :rest_hours

      t.belongs_to :trip, index: true
      t.belongs_to :section, index: true

      t.timestamps
    end
  end
end
