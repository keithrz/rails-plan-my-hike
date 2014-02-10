class Trail < ActiveRecord::Base
  has_many :trail_sections, dependent: :destroy
end
