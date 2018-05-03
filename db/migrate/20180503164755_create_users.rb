class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type
      t.string :email
      t.string :password
      t.integer :age
      t.string :edu_level

      t.timestamps
    end
  end
end
