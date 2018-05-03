class Admin < User
    has_many :courses
    has_many :instructors
    has_many :students
end
