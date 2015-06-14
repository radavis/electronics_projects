class Part < ActiveRecord::Base
  has_many :project_parts
  has_many :projects, through: :project_parts

  validates :part_number, presence: true
  validates :name, presence: true
end
