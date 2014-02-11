require 'spec_helper'

describe Trail do
  it "has a valid factory" do
    create(:trail).should be_valid
  end

  it "is invalid without a name" do
    build(:trail, name: nil).should_not be_valid
  end

  it "is invalid without an abbreviation" do
    build(:trail, abbrev: nil).should_not be_valid
  end

  it "destroys child orphan sections if it is deleted" do
    trail = create(:trail)
    create(:trail_section, trail: trail)
    create(:trail_section, trail: trail)
    TrailSection.count() == 2
    trail.destroy!
    TrailSection.count() == 0
  end

  it "does not allow duplicate abbreviations" do
    create(:trail, abbrev: "PCT")
    build(:trail, abbrev: "PCT").should_not be_valid
  end
end