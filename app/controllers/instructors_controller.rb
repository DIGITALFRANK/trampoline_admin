class InstructorsController < ApplicationController

  def dashboard
  end

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
    @instructor_admin = Admin.find(@instructor.admin_id)
  end

  def new
  end
  
  def create
    @instructor = Instructor.create(user_params)
    redirect_to "/instructors/#{@instructor.id}/"
  end

  def edit
    @instructor = Instructor.new
  end

  def update
    @instructor = Instructor.find(params[id])
    @instructor.update(instructor_params)
    redirect_to "/instructor/#{params[id]}"
  end

  def destroy
    Instructor.destroy(Instructor.params[id])
  end




  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :DOB, :edu_level, :position, :hire_date, :salary, :email, :password)
  end
end

