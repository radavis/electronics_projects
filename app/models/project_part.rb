class ProjectPart < ActiveRecord::Base
  belongs_to :project
  belongs_to :part

  validates :project, presence: true
  validates :part, presence: true
  validates :quantity, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
