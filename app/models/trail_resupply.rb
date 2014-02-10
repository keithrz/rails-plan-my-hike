class TrailResupply < ActiveRecord::Base
  belongs_to :trail_point, inverse_of: :trail_resupplies
end
