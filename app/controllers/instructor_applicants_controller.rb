class InstructorApplicantsController < ApplicationController
  def index
    @instructor_applicants = InstructorApplicant.all
  end

  def show
    @instructor_applicant = InstructorApplicant.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
