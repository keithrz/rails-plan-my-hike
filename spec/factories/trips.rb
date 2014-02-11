FactoryGirl.define do
  factory :trip do
    name "Steve's 2013 PCT Trip"
    start_date Date.new(2013, 4, 19)
    pace_mph 2.1
  end
end