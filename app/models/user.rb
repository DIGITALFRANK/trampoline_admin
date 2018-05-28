class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :omniauthable, and :confirmable, 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  TYPES = %w( Admin Instructor Student InstructorApplicant StudentApplicant )
  # before_save :set_type
  # validates :type, presence: true, :inclusion => { :in => TYPES }

  # def set_type
  #   # raiser "You must override this method in each model inheriting from Product!"
  # end
end
