class CreateStudentApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :student_applicants do |t|

      t.timestamps
    end
  end
end
