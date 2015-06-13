class Project < ActiveRecord::Base
  validate :name, presence: true
  validate :description, presence: true
end
