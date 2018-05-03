class CreateInstructorApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_applicants do |t|

      t.timestamps
    end
  end
end
