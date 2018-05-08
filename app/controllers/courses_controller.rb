class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @course_admin = Admin.find(@course.admin_id)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to "/courses/#{@course.id}/"
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to "/courses/#{@course.id}/"
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to "/courses"
  end



  private 

  def course_params
    params.require(:course).permit(:img_url, :name, :subjects, :admin_id)
  end
end
