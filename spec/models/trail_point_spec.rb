require 'spec_helper'

describe TrailPoint do
  #t.string :title, null: true
  #t.text :description, null: true
  ## mile_pct are miles expressed in cents, ie. value of 127 = 1.27 miles
  #t.integer :position_mile_pct, null: false
  #t.integer :elevation_ft, null: false
  #
  #t.belongs_to :trail_section, index: true
  #
  #t.timestamps

  it "has a valid factory" do
    create(:trail_point).should be_valid
  end

  it "is invalid without a mile position" do
    build(:trail_point, position_mile_pct: nil).should_not be_valid
  end

  it "is invalid without a specified elevation" do
    build(:trail_point, elevation_ft: nil).should_not be_valid
  end

  it "is invalid without a trail section" do
    build(:trail_point, trail_section: nil).should_not be_valid
  end
end