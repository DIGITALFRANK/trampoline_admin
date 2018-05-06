class Course < ApplicationRecord
    has_many :cohorts
    belongs_to :admin
end
