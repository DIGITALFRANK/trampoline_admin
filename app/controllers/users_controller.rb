class UsersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:login]
    
    def login 
        puts "I just hit the landing/login page"
    end



    private

    def user_params
      params.require(:user).permit(:type, :img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
    end
end



