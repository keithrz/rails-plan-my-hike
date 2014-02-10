class Trail < ActiveRecord::Base
  has_many :trail_sections, dependent: :destroy
  validates :name, :abbrev, presence: true
  validates :abbrev, uniqueness: true
end
