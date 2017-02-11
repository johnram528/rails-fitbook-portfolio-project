class RoutinesController < ApplicationController
  def index
  end

  def new
    @routine = Routine.new
    5.times { @routine.exercises.build}
  end

  def create
    raise.params.inspect
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
end
