class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|

      t.references(:amdin, index: true)
      t.timestamps
    end
  end
end
