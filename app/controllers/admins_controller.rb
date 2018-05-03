class AdminsController < ApplicationController

  def index
    puts "this is the admins page biaaaatch!!"
  end

  def show
  end



  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(admin_params)
    redirect_to "dashboard/admin/#{@admin.id}"
  end




  private

  def admin_params
    params.require(:admin).permit(:type, :first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
  end
end
