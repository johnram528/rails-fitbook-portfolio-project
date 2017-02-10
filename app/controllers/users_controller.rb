class UsersController < ApplicationController
 
  def show
  end

  def edit
    if current_user
      @user = User.find_by_id(current_user.id)
    else
      redirect_to new_session_path
    end
  end

  def update
  end
end
