class InstructorsController < ApplicationController

  def index
  end

  def create
  end

  def new
  end

  def show
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
