class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.date :start_date, null: false

      t.decimal :pace_mph, null: false
      t.integer :day_length_hours, default: 8

      t.timestamps
    end
  end
end
