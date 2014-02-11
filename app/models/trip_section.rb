class TripSection < ActiveRecord::Base
  belongs_to :trip, inverse_of: :trip_sections
  belongs_to :trail_section
  validates :duration_hours, :trip, :trail_section, presence: true
end
