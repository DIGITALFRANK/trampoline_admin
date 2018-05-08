class AdminsController < ApplicationController

  def dashboard
    ### this should happen in the User#dashboard with user type filtering 
    # @user = Admin.find(params[:id])
    # render template: '/users/admins/dashboard'
  end

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(user_params)
    redirect_to "/admins/#{@admin.id}/"
  end

  def edit
  end

  def update
  end

  def destroy
  end




  private

  def user_params
    params.require(:admin).permit(:first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
  end
end
