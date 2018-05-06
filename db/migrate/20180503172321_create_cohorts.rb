class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.boolean :fulltime
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :days_hours

      t.integer :admin_id
      t.integer :course_id
      t.integer :instructor_id
      t.timestamps
    end
  end
end
