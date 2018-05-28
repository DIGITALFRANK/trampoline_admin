class StudentApplicantsController < ApplicationController
  def index
    @student_applicants = StudentApplicant.all
    @i = 1
  end

  def show
    @student_applicant = StudentApplicant.find(params[:id])
  end

  def new
    @student_applicant = StudentApplicant.new
  end

  def create
    @student_applicant = StudentApplicant.new(student_applicant_params)
    @student_applicant.save
    # sign_out(@student_applicant)
    redirect_to "/student_applicants/#{@student_applicant.id}/"
  end

  # def after_sign_up_path_for(resource)
  #   super(resource)
  #   sign_out(resource_name)
  # end

  def edit
    @student_applicant = StudentApplicant.find(params[:id])
  end

  def update
    @student_applicant = StudentApplicant.find(params[:id])
    @student_applicant.update(student_applicant_params)
    redirect_to "/student_applicants/#{@student_applicant.id}/"
  end

  def destroy
    @student_applicant = StudentApplicant.find(params[:id])
    @student_applicant.destroy
    redirect_to "/student_applicants"
  end

 


  private

  def student_applicant_params
    params.require(:student_applicant).permit(:img_url, :first_name, :last_name, :DOB, :edu_level, :email, :password, :admin_id)
  end
end
