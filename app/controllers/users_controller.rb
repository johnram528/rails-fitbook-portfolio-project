class UsersController < ApplicationController
 
  def show
    if current_user 
    @user = User.find_by_id(current_user.id)
      unless current_user.id == @user.id
        redirect_to user_path(@user)
      end
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    if current_user
      @user = User.find_by_id(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @user = User.find_by_id(current_user.id)
    @user.update(user_params)
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:height, :weight)
    end
end
