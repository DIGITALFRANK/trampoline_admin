class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :expertise
      t.date :hire_date
      t.integer :salary

      t.references(:amdin, index: true)
      t.timestamps
    end
  end
end
