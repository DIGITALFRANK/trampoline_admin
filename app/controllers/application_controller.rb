class ApplicationController < ActionController::Base
    #protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    devise_group :user, contains: [:admin, :instructor, :student, :instructor_applicant, :student_applicant]



    def after_sign_in_path_for(resource)
        dashboard_root_path
    end





    protected

    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password])
    end
end


