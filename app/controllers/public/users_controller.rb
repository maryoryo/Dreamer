class Public::UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]
  

  def show
    @user = User.find(params[:id])
    @big_goal = @user.big_goals
    @medium_goal = @user.medium_goals
    @small_goal = @user.small_goals
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit, notice:"ユーザー情報を更新しました"
    end
  end
  
  def withdrawal
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
  
  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path
    end
  end
  
end
