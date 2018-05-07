# (DONE) delete Admin, Instructor, and Student models, and have everything run through the user model / child classes can be accessed

# (DONE) create courses and cohorts => examine associations
# (DONE) determine many to many association btw student users and their cohorts
# (DONE) will teachers have a one to one or one to maany association with cohorts? => examine
# (DONE) seed and test all relationships > forget applications for now


# *********** (DONE) - config/initializers/user_loading.rb)  make sure to load all users (User.all) on landing in order to be able to access User subclasses eg: Admin, Instructor, Student


# 1 - configure login process => Post route to => User#dashboard with user type filtering and respective dashboard landing

# 2 - examine routes based on user types => limit access accordingly
# full CRUD - create forms with rails helpers / bootstrap => configure correct index/show new/create edit/update delete/destroy routes and redirects



# 3 - examine login routes => determine dashboard routes
### determine sessions
### login form post route redirect_to => dashboard, based on user type


# 4 - add img_url column to users table - fully configure database tables and colums - what other data might you want to access in a real world scenario
# 5 - add Ethereum Blockchain Intensive to the list of offered courses 


# 6 - applicants and their applications => determine relationship => one to one but between 3 tables => or rather 2 tables, one having subclasses
# 7 - the actual application - full CRUD, editable, referable, progress savable and savable to PDF

# 8 - security
### password security
### form validation



class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :edu_level
      t.string :expertise
      t.string :position
      t.date :hire_date
      t.integer :salary
      t.string :email
      t.string :password

      t.integer :admin_id
      t.integer :application_id
      # t.references :admin, index: true, foreign_key: true
      t.timestamps
    end
  end
end

