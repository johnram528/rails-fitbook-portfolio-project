class RoutinesController < ApplicationController
  def index
  end

  def new
    @routine = Routine.new
    5.times { @routine.exercises.build}
  end

  def create
    @routine = Routine.new(routine_params)
    if @routine.save
      redirect_to @routine
    else
      render 'new'
    end
  end

  def show
    @routine = Routine.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def routine_params
      params.require(:routine).permit(:name, :exercises_attributes => [:name, :reps, :instructions, :rep_time, :muscles] )
    end
end
