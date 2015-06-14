class CreateProjectParts < ActiveRecord::Migration
  def change
    create_table :project_parts do |t|
      t.integer :project_id, null: false
      t.integer :part_id, null: false
      t.timestamps null: false
    end
  end
end
