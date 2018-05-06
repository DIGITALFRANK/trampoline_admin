class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subjects

      t.integer :admin_id
      t.timestamps
    end
  end
end
