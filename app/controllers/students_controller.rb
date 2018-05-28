class StudentsController < ApplicationController
  def index
    @students = Student.all
    @i = 1
  end

  def show
    @student = Student.find(params[:id])
    @student_admin = Admin.find(@student.admin_id)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to "/students/#{@student.id}/"
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to "/students/#{@student.id}/"
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to "/students"
  end

 


  private

  def student_params
    params.require(:student).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :email, :admin_id)
  end
end
