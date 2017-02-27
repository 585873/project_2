class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email_id
      t.string :subject
      t.string :rate
    end
  end
end
