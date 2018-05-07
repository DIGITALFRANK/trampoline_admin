class InstructorsController < ApplicationController

  def dashboard
  end

  def index
  end

  def show
  end

  def new
  end
  
  def create
  end

  def edit
    @instructor = Instructor.new
  end

  def update
    @instructor = Instructor.find(params[id])
    @instructor.update(instructor_params)
    redirect_to "/instructor/#{params[id]}"
  end

  def destroy
    Instructor.destroy(Instructor.params[id])
  end




  private
  def instructor_params

  end
end

