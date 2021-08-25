class Public::MediumGoalsController < ApplicationController
    
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def show
    @medium_goal = MediumGoal.find(params[:id])
    @medium_goal.user_id = current_user.id
  end

  def new
    @medium_goal = MediumGoal.new
  end
  
  def create
    @medium_goal = MediumGoal.new(medium_goal_params)
    @medium_goal.user_id = current_user.id
    if @medium_goal.save
      redirect_to user_path(current_user.id), notice:"中目標を作成しました"
    else
      render :new
    end
  end

  def edit
    @medium_goal = MediumGoal.find(params[:id])
    @medium_goal.user_id = current_user.id
  end
  
  def update
    @medium_goal = MediumGoal.find(params[:id])
    @medium_goal.user_id = current_user.id
    if @medium_goal.update(medium_goal_params)
      redirect_to user_path(current_user.id), notice:"中目標を更新しました"
    else
      render :edit
    end
  end
  
  def destroy
    medium_goal = MediumGoal.find(params[:id])
    medium_goal.user_id = current_user.id
    medium_goal.destroy
    redirect_to user_path(current_user.id), notice:"中目標を削除しました"
  end
  
  
  private
  
  def medium_goal_params
    params.require(:medium_goal).permit(:medium_goal_content, :medium_goal_when, :medium_goal_why, :medium_goal_action)
  end
  
  def ensure_correct_user
    @medium_goal = MediumGoal.find(params[:id])
    unless @medium_goal.user_id == current_user.id
      redirect_to root_path
    end
  end
end
