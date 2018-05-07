class Admin < User
    has_many :courses
    has_many :cohorts
    has_many :instructors
    has_many :students
end