class TrailSection < ActiveRecord::Base
  belongs_to :trail, inverse_of: :trail_sections
  has_many :trail_points, -> { order "position_mile_pct" }, inverse_of: :trail_section
  validates :name, :mile_pct, :elevation_diff_ft, :trail, presence: true
end
