class AdminsController < ApplicationController

  def dashboard
    ### this should happen in the User#dashboard with user type filtering 
    # @user = Admin.find(params[:id])
    # render template: '/users/admins/dashboard'
    end

    def index
        puts "list of all the Admins"
    end

    def show
    end

    def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.create(user_params)
        # redirect_to "/user/admin/#{@admin.id}/dashboard/"
    end

    def edit
    end

    def update
    end

    def destroy
    end




  private

  def user_params
    params.require(:user).permit(:type, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
  end
end
