class TrailResupply < ActiveRecord::Base
  belongs_to :trail_point, inverse_of: :trail_resupplies
  validates :name, :offset_mile_pct, :trail_point, presence: true
end
