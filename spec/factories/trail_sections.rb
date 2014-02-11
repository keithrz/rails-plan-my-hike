FactoryGirl.define do
  factory :trail_section do
    name "PCT Section A"
    mile_pct 10950 # 109.50 miles
    elevation_diff_ft 9000
    trail
  end
end