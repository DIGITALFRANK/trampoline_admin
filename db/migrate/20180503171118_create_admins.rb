class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :position
      t.date :hire_date
      t.integer :salary

      t.timestamps
    end
  end
end
