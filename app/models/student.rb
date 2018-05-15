class Student < User
    has_many :cohort_students, :as => :student
    has_many :cohorts, :through => :cohort_students , :source => :cohort 

    # def set_type
    #     self.type = 'Student'
    # end
end