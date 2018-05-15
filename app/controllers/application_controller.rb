class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password])
    end
end


# User.all
