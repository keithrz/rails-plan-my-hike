require 'faker'

FactoryGirl.define do
  factory :trail do
    name "Pacific Crest Trail"
    abbrev {Faker::Name.name}
  end
end