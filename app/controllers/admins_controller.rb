class AdminsController < ApplicationController

  def dashboard
    ### this should happen in the User#dashboard with user type filtering 
    # @user = Admin.find(params[:id])
    # render template: '/users/admins/dashboard'
  end

  def index
    @admins = Admin.all
    @i = 1
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(admin_params)
    redirect_to "/admins/#{@admin.id}/"
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params)
    redirect_to "/admins/#{params[:id]}"
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to "/admins"
  end




  private

  def admin_params
    params.require(:admin).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
  end
end
