class Trail < ActiveRecord::Base
  has_many :trail_sections
  validates :name, :abbrev, presence: true
  validates :abbrev, uniqueness: true
end
