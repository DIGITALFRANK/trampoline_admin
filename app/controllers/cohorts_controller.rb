class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
    @cohort_admin = Admin.find(@cohort.admin_id)
    @cohort_instructor = Instructor.find(@cohort.instructor_id)
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to "/cohorts/#{@cohort.id}/"
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohort_params)
    redirect_to "/cohorts/#{@cohort.id}/"
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to "/cohorts"
  end



  private 

  def cohort_params
    params.require(:cohort).permit(:fulltime, :name, :start_date, :end_date, :days_hours, :admin_id, :course_id, :instructor_id)
  end
end
