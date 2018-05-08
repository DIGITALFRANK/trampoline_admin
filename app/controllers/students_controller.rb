class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student_admin = Admin.find(@student.admin_id)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(user_params)
    redirect_to "/students/#{@student.id}/"
  end

  def edit
  end

  def update
  end

  def destroy
  end




  private

  def user_params
    params.require(:student).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :email, :password, :admin_id)
  end
end
