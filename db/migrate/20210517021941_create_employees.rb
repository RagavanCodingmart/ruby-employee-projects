class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.string :employee_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
