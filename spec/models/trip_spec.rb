require 'spec_helper'

describe Trip do
  it "has a valid factory" do
    create(:trip).should be_valid
  end

  it "is invalid without a name" do
    build(:trip, name: nil).should_not be_valid
  end

  it "is invalid without a start date" do
    build(:trip, start_date: nil).should_not be_valid
  end

  it "is invalid without a pace" do
    build(:trip, pace_mph: nil).should_not be_valid
  end

  it "has a default length of the day when not specified" do
    build(:trip, day_length_hours: nil).day_length_hours == 8
  end
end