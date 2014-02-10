class Trip < ActiveRecord::Base
  has_many :trip_sections, inverse_of: :trip, dependent: :destroy
  has_many :trail_sections, through: :trip_sections
end
