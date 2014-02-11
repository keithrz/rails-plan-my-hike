FactoryGirl.define do
  factory :trip_section do
    duration_hours 60
    trip
    trail_section
  end
end