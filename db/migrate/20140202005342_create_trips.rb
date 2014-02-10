class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.date :start_date

      t.decimal :pace_mph
      t.integer :day_length_hours

      t.timestamps
    end
  end
end
