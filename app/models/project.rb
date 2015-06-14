class Project < ActiveRecord::Base
  has_many :project_parts
  has_many :parts, through: :project_parts

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
