class StudentApplicantsController < ApplicationController
  def index
    @student_applicants = StudentApplicant.all
  end

  def show
    @student_applicant = StudentApplicant.find(params[:id])
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
