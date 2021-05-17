class CreateAssignedProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :assigned_projects do |t|
      t.string :employee_id
      t.string :project_id

      t.timestamps
    end
  end
end
