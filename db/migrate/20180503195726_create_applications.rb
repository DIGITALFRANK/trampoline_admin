class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :type
      t.datetime :date_started
      t.boolean :finished
      t.integer :grade
      t.string :PDF_url

      t.integer :user_id
      t.timestamps
    end
  end
end
