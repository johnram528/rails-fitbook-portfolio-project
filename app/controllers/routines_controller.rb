class RoutinesController < ApplicationController
  def index
  end

  def new
  end

  def create
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
