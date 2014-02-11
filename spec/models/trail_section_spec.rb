require 'spec_helper'

describe TrailSection do
  it "has a valid factory" do
    create(:trail_section).should be_valid
  end

  it "is invalid without a name" do
    build(:trail_section, name: nil).should_not be_valid
  end

  it "is invalid without a distance" do
    build(:trail_section, mile_pct: nil).should_not be_valid
  end

  it "is invalid without a specified increase in elevation" do
    build(:trail_section, elevation_diff_ft: nil).should_not be_valid
  end

  it "is invalid without a trail" do
    build(:trail_section, trail: nil).should_not be_valid
  end
end