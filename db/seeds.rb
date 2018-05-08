# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



### admins
User.create(type: "Admin", img_url: "app/assets/images/profiles/...", first_name: "Jason", last_name: "Bourne", DOB: Date.parse("2295-12-31"), edu_level: "PHD", position: "enforcer", hire_date: Date.parse("2018-2-26"), salary: 500000, email: "jason.bourne@thetrampoline.com", password: "bournesoldier1")
User.create(type: "Admin", img_url: "app/assets/images/profiles/...", first_name: "James", last_name: "Bond", DOB: Date.parse("1991-4-21"), edu_level: "Masters", position: "enforcer", hire_date: Date.parse("2018-4-10"), salary: 700000, email: "james.bond@thetrampoline.com", password: "wordisbond")



### Jason Bourne's students
User.create(type: "Student", img_url: "app/assets/images/profiles/...", first_name: "Chief", last_name: "Keef", DOB: Date.parse("1995-7-17"), edu_level: "youngn", admin_id: 1, email: "keefgood@thetrampoline.com", password: "thatshitidontlike")

### Jason Bourne's instructors
User.create(type: "Instructor", img_url: "app/assets/images/profiles/...", first_name: "John", last_name: "Gotti", DOB: Date.parse("1958-1-11"), edu_level: "streets", expertise: "takin out bosses", position: "Teflon Don", hire_date: Date.parse("2018-5-2"), salary: 50000000, admin_id: 1, email: "gottiboyz@thetrampoline.com", password: "teflondon")



### James Bond's students
User.create(type: "Student", img_url: "app/assets/images/profiles/...", first_name: "Young", last_name: "Dro", DOB: Date.parse("1985-2-14"), edu_level: "HS", admin_id: 2, email: "dropurp@hotmail.com", password: "youngndro")
User.create(type: "Student", img_url: "app/assets/images/profiles/...", first_name: "Blu", last_name: "DaVinci", DOB: Date.parse("1988-8-24"), edu_level: "Bachelors", admin_id: 2, email: "bluesocks@gmail.com", password: "cccccccrrrip")

### James Bond's instructors
User.create(type: "Instructor", img_url: "app/assets/images/profiles/...", first_name: "Marylin", last_name: "Monroe", DOB: Date.parse("1946-4-1"), edu_level: "PHD", expertise: "suckin nuts", position: "Instructor 1", hire_date: Date.parse("2018-1-23"), salary: 50000, admin_id: 2, email: "marylinlove@thetrampoline.com", password: "prettygal2")
User.create(type: "Instructor", img_url: "app/assets/images/profiles/...", first_name: "Tom", last_name: "Cruise", DOB: Date.parse("1968-10-18"), edu_level: "Bachelors", expertise: "actin a fool", position: "Instructor 2", hire_date: Date.parse("2018-2-2"), salary: 75000, admin_id: 2, email: "cruiseorsurf@thetrampoline.com", password: "moviesareus")



### instructor applicants
User.create(type: "InstructorApplicant", img_url: "app/assets/images/profiles/...", first_name: "John", last_name: "Dough", DOB: Date.parse("1985-7-17"), edu_level: "Masters", email: "jonjohn@gw.com", password: "johnthegreat")
User.create(type: "InstructorApplicant", img_url: "app/assets/images/profiles/...", first_name: "Lisa", last_name: "Lowitz", DOB: Date.parse("1991-10-28"), edu_level: "Bachelors", email: "ladylow@gmail.com", password: "lowlow23")

### student applicans
User.create(type: "StudentApplicant", img_url: "app/assets/images/profiles/...", first_name: "Leo", last_name: "DiCaprio", DOB: Date.parse("1974-10-8"), edu_level: "Bachelors", email: "titanic1@gmail.com", password: "watchtv")
User.create(type: "StudentApplicant", img_url: "app/assets/images/profiles/...", first_name: "Andy", last_name: "Garcia", DOB: Date.parse("1991-6-13"), edu_level: "Bachelors", email: "homerunking@hotmail.com", password: "baseball4life")





### courses
Course.create(img_url: "app/assets/images/courses/...", name: "Design Principle Intensive", subjects: "interacitve design, user experience design, user interface design, visual design, graphic design", admin_id: 1)
Course.create(img_url: "app/assets/images/courses/...", name: "Software Engineering Intensive", subjects: "full stack web development, MEAN, MERN, Ruby on Rails, computer progamming, software and mobile development", admin_id: 1)
Course.create(img_url: "app/assets/images/courses/...", name: "Digital Marketing Intensive", subjects: "SEO, SEM, CRM, email marketing, digital advertising", admin_id: 1)







### COHORTS

### design principle cohorts
Cohort.create(fulltime: true, name: "Design Principle - January 2019", start_date: Date.parse("2019-1-17"), end_date: Date.parse("2019-5-23"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 1, course_id: 1, instructor_id: 4)
Cohort.create(fulltime: true, name: "Design Principle - June 2019", start_date: Date.parse("2019-6-7"), end_date: Date.parse("2019-12-15"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 1, course_id: 1, instructor_id: 7)
Cohort.create(fulltime: false, name: "Design Principle - Part Time", start_date: Date.parse("2019-1-4"), end_date: Date.parse("2019-12-18"), days_hours: "Mon - Fri, 6:30pm - 9:30pm", admin_id: 1, course_id: 1, instructor_id: 4)

### software engineering cohorts
Cohort.create(fulltime: true, name: "Software Engineering - January 2019", start_date: Date.parse("2019-1-17"), end_date: Date.parse("2019-5-23"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 2, course_id: 2, instructor_id: 8)
Cohort.create(fulltime: true, name: "Software Engineering - June 2019", start_date: Date.parse("2019-1-17"), end_date: Date.parse("2019-5-23"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 2, course_id: 2, instructor_id: 8)
Cohort.create(fulltime: false, name: "Software Engineering - Part Time", start_date: Date.parse("2019-1-4"), end_date: Date.parse("2019-12-18"), days_hours: "Mon - Fri,  6:30pm - 9:30pm", admin_id: 2, course_id: 2, instructor_id: 7)

### digital marketing cohorts
Cohort.create(fulltime: true, name: "Digital Markting - January 2019", start_date: Date.parse("2019-1-17"), end_date: Date.parse("2019-5-23"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 1, course_id: 3, instructor_id: 4)
Cohort.create(fulltime: true, name: "Digital Markting - June 2019", start_date: Date.parse("2019-1-17"), end_date: Date.parse("2019-5-23"), days_hours: "Mon - Fri, 9am - 5pm", admin_id: 2, course_id: 3, instructor_id: 4)
Cohort.create(fulltime: false, name: "Digital Markting - Part Time", start_date: Date.parse("2019-1-4"), end_date: Date.parse("2019-12-18"), days_hours: "Mon - Fri, 6:30pm - 9:30pm", admin_id: 1, course_id: 3, instructor_id: 8)


