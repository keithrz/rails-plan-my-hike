class TrailPoint < ActiveRecord::Base
  belongs_to :trail_section, inverse_of: :trail_points
  has_many :trail_resupplies, inverse_of: :trail_point
end
