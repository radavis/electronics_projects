class AddQuantityToProjectParts < ActiveRecord::Migration
  def change
    add_column :project_parts, :quantity, :integer, default: 1
  end
end
