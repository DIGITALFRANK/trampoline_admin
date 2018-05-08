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



  private

  def user_params
    params.require(:instructor_applicant).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :email, :password, :admin_id)
  end
end
