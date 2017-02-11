class RoutinesController < ApplicationController
  before_action :set_user
  def index
    if params[:user_id]
      @routines = @user.routines
    else
      @routines = Routine.all
    end
  end

  def new
    @routine = Routine.new
    5.times { @routine.exercises.build}
  end

  def create
    @user = User.find_by(id: current_user.id)
    @user.routines.build(routine_params)
    if @user.save
      redirect_to routine_path(@user.routines.last)
    else
      redirect_to new_routine_path
    end
  end

  def show
    @routine = Routine.find_by(id: params[:id])
  end

  def edit
    @routine = Routine.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def routine_params
      params.require(:routine).permit(:name, :exercises_attributes => [:name, :reps, :instructions, :rep_time, :muscles] )
    end

    def set_user
      @user ||= User.find_by(id: current_user.id)
    end
end
