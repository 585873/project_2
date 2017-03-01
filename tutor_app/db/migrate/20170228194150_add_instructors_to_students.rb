class AddInstructorsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :user_id, :integer
    add_column :students, :user_id, :integer
  end
end
