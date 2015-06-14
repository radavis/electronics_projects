class ProjectPart < ActiveRecord::Base
  has_many :projects
  has_many :parts

  validates :project, presence: true
  validates :part, presence: true
end
