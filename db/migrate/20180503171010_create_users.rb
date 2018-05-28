# (DONE) delete Admin, Instructor, and Student models, and have everything run through the user model / child classes can be accessed

# (DONE) create courses and cohorts => examine associations
# (DONE) determine many to many association btw student users and their cohorts
# (DONE) will teachers have a one to one or one to maany association with cohorts? => examine
# (DONE) seed and test all relationships > forget applications for now

# *********** (DONE) - config/initializers/user_loading.rb)  make sure to load all users (User.all) on landing in order to be able to access User subclasses eg: Admin, Instructor, Student

# (DONE) full CRUD - create forms with rails helpers / bootstrap => configure correct index/show new/create edit/update delete/destroy routes and redirects

# (DONE) implement Devise gem for User Authentication
#   security
##  password security
### form validation - all fields required - email & password validation

# (DONE) configure login process => Post route to => User#dashboard with user type filtering and respective dashboard landing



####### copy talbe listing from students for all ---  Make CRUD AJAX
####### A$AP - re-examine CRUD w/ Devise - only admins can create, update & delete stuff
# - do not login ppl when creating new - only one user per browser
####### - everyone else can edit just their own account, everything else is read only (users shouldnt be able to see other user's info)

# 1 - Authorization by User Type: CanCanCan gem?  or are we "hard-coding" this? 
#####   examine routes based on user types => limit access accordingly - build respective templates => make sure respective *layout* is properly configured 

# 2 -  a course can list it's associated cohorts (filtered by most upcoming)

# 3 - current cohorts grouped (filter date attribute - maybe set limit to a certain date)
# 4 - cohorts filtered by most upcoming (compare date attribute)

# 5 - instructors can see just their cohorts
# 6 - instructors can see just their students

# 7 - Students can see their own cohorts
# 8 - Students can see upcoming cohorts

# 9 - Cohorts display their instructor

# **********************
# 10 - how do admins assign students to cohorts? search student by first_name, search student by last_name - assign to cohort by id - edit join cohorts_students table
# 11 - admins have the ability to add students to cohorts from their dashboard, 
# 12 - admins have the ability to add students to cohorts from cohorts/show (/cohorts/:id) pages
# 13 - admins have the ability to add students to cohorts from the students/show (/students/:id) pages
# 14 - admins have the ability to individually add students to cohorts from the students/index (/students) list

# 15
# **** A$$$AP - make all CRUD ajax - implement js.erb views  -  app with as much AJAX functionality as possible
# --- duplicate functionality for index lists? how does this work, do we get a pop up modal for edit?
# --- pop up modal can be closed (changes unsaved) or when "update" info button is clicked, AJAX 'post' call (remote: true on the button link) to update database & redisplay

# 16 - add "apply now" link button to /users/login route that takes you to the create applicant form - restrict the type field to "InstructorApplicant" or "StudentApplicant"  
# 17 - applicants are not created by admins, they create themselves as they apply - and bind themselves to a new application that is also simulteanously created
# 18 - applicants and their applications => determine relationship => one to one but between 3 tables => or rather 2 tables, one having subclasses
# 19 - the actual application - full CRUD, editable, referable, progress savable and savable to PDF

# 20 - StudentsApplicants can see only their own application
# 21 - InstructorApplicants can see only their own application 

# 22 - add img_url column to users table - file upload with PaperClip gem? - fully configure database tables and colums - what other data might you want to access in a real world scenario
# 23 - add Ethereum Blockchain Intensive to the list of offered courses 

# 24 - prrrretty it up!  Sass - JS animations - warnings?




class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type
      t.string :img_url
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

