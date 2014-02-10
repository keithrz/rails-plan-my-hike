class TrailSection < ActiveRecord::Base
  belongs_to :trail, inverse_of: :trail_sections
  has_many :trail_points, inverse_of: :trail_section, dependent: :destroy
end
