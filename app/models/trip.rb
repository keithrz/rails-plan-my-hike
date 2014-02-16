class Trip < ActiveRecord::Base
  has_many :trip_sections, inverse_of: :trip
  has_many :trail_sections, through: :trip_sections
  validates :name, :start_date, :pace_mph, presence: true
end
