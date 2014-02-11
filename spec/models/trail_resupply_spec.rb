require 'spec_helper'

describe TrailResupply do
  it "has a valid factory" do
    create(:trail_resupply).should be_valid
  end

  it "is invalid without a name" do
    build(:trail_resupply, name: nil).should_not be_valid
  end

  it "is invalid without a distance back to the trail" do
    build(:trail_resupply, offset_mile_pct: nil).should_not be_valid
  end

  it "is invalid without a trail point" do
    build(:trail_resupply, trail_point: nil).should_not be_valid
  end
end