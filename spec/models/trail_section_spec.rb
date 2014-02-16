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

  context "with 2 or more points" do
    it "orders them in order of mile position" do
      trail_section = create(:trail_section)
      trail_point1 = create(:trail_point, trail_section: trail_section, position_mile_pct: 1020)
      trail_point2 = create(:trail_point, trail_section: trail_section, position_mile_pct: 930)
      expect(trail_section.reload.trail_points).to eq([trail_point2, trail_point1])
    end
  end

  it "destroys child orphan points if it is deleted" do
    trail_section = create(:trail_section)
    trail_point1 = create(:trail_point, trail_section: trail_section)
    trail_point2 = create(:trail_point, trail_section: trail_section)
    TrailPoint.count() == 2
    trail_section.destroy!
    TrailPoint.count() == 0
  end
end