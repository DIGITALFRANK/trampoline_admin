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
    @instructor = Instructor.new
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
    @instructor.update(user_params)
    redirect_to "/instructor/#{params[id]}"
  end

  def destroy
    Instructor.destroy(Instructor.params[id])
  end




  private

  def user_params
    params.require(:instructor).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :expertise, :position, :hire_date, :salary, :email, :password, :admin_id)
  end
end

