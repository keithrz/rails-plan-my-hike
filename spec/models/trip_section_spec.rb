require 'spec_helper'

describe TripSection do
  it "has a valid factory" do
    create(:trip_section).should be_valid
  end

  it "is invalid without a duration" do
    build(:trip_section, duration_hours: nil).should_not be_valid
  end

  it "is invalid without a trip" do
    build(:trip_section, trip: nil).should_not be_valid
  end

  it "is invalid without a trail section" do
    build(:trip_section, trail_section: nil).should_not be_valid
  end
end