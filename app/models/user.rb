class User < ApplicationRecord

end

class Admin < User
    has_many :courses
    has_many :cohorts
    has_many :instructors
    has_many :students
end

class Instructor < User
    has_many :cohorts
end

class Student < User
    has_many :cohort_students, :as => :student
    has_many :cohorts, :through => :cohort_students , :source => :cohort 
end

class InstructorApplicant < User
    has_one :application
end

class StudentApplicant < User
    has_one :application
end
