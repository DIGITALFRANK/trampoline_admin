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




  private

  def user_params
    params.require(:student_applicant).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :email, :password, :admin_id)
  end
end
