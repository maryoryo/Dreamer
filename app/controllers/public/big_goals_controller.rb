class Public::BigGoalsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def show
    @big_goal = BigGoal.find(params[:id])
    @big_goal.user_id = current_user.id
  end

  def new
    @big_goal = BigGoal.new
  end
  
  def create
    @big_goal = BigGoal.new(big_goal_params)
    @big_goal.user_id = current_user.id
    if @big_goal.save
      redirect_to user_path(current_user.id), notice:"大目標を作成しました"
    else
      render :new
    end
  end

  def edit
    @big_goal = BigGoal.find(params[:id])
    @big_goal.user_id = current_user.id
  end
  
  def update
    @big_goal = BigGoal.find(params[:id])
    @big_goal.user_id = current_user.id
    if @big_goal.update(big_goal_params)
      redirect_to user_path(current_user.id), notice:"大目標を更新しました"
    else
      render :edit
    end
  end
  
  def destroy
    big_goal = BigGoal.find(params[:id])
    big_goal.user_id = current_user.id
    big_goal.destroy
    redirect_to user_path(current_user.id), notice:"大目標を削除しました"
  end
  
  
  private
  
  def big_goal_params
    params.require(:big_goal).permit(:big_goal_content, :big_goal_when, :big_goal_why, :big_goal_action)
  end
  
  def ensure_correct_user
    @big_goal = BigGoal.find(params[:id])
    unless @big_goal.user_id == current_user.id
      redirect_to root_path
    end
  end
end
