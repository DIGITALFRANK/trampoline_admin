class UsersController < ApplicationController
    
    def login 
        puts "I just hit the landing/login page"
    end

    def login_error 
        puts "I entered my email/password info wrong"
    end

    def dashboard
        @user = User.where(:email = params[:email], :password = params[:password])
        if @user.type = "Admin"
            @user = Admin.find(@user.id)
            render template: '/users/admins/dashboard'
        elsif @user.type = "Instructor"
            @user = Instructor.find(@user.id)
            render template: '/users/instructors/dashboard'
        elsif @user.type = "Student"
            @user = Student.find(@user.id)
            render template: '/users/students/dashboard'
        elsif @user.type = "InstructorApplicant"
            @user = InstructorApplicant.find(@user.id)
            render template: '/users/instructor_applicans/dashboard'
        elsif @user.type = "StudentApplicant"
            @user = StudentApplicant.find(@user.id)
            render template: '/users/student_applicants/dashboard'
        end
    end




    private

    def user_params
      params.require(:user).permit(:type, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
    end
end



