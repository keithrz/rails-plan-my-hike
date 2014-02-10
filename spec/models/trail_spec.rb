require 'spec_helper'

describe Trail do
  it "has a valid factory" do
    FactoryGirl.create(:trail).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:trail, name: nil).should_not be_valid
  end
  it "is invalid without an abbreviation" do
    FactoryGirl.build(:trail, abbrev: nil).should_not be_valid
  end
  it "destroys child orphan sections if it is deleted" do
    trail = FactoryGirl.create(:trail)
    FactoryGirl.create(:trail_section, trail: trail)
    FactoryGirl.create(:trail_section, trail: trail)
    TrailSection.count() == 2
    trail.destroy!
    TrailSection.count() == 0
  end
  it "does not allow duplicate abbreviations" do
    FactoryGirl.create(:trail, abbrev: "PCT")
    FactoryGirl.build(:trail, abbrev: "PCT").should_not be_valid
  end
end