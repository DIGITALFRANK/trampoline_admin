class Cohort < ApplicationRecord
    belongs_to :course
    belongs_to :admin
    belongs_to :instructor

    has_many :cohort_students, :as => :cohort
    has_many :students, :through => :cohort_students , :source => :student
end
