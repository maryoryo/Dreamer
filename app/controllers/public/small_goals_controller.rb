class Public::SmallGoalsController < ApplicationController
    
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def show
    @small_goal = SmallGoal.find(params[:id])
    @small_goal.user_id = current_user.id
  end

  def new
    @small_goal = SmallGoal.new
    @small_goal.user_id = current_user.id
  end
  
  def create
    @small_goal = SmallGoal.new(small_goal_params)
    @small_goal.user_id = current_user.id
    if @small_goal.save
      redirect_to user_path(current_user.id), notice:"小目標を作成しました"
    else
      render :new
    end
  end

  def edit
    @small_goal = SmallGoal.find(params[:id])
    @small_goal.user_id = current_user.id
  end
  
  def update
    @small_goal = SmallGoal.find(params[:id])
    @small_goal.user_id = current_user.id
    if @small_goal.update(small_goal_params)
      redirect_to user_path(current_user.id), notice:"小目標を更新しました"
    else
      render :edit
    end
  end
  
  def destroy
    small_goal = SmallGoal.find(params[:id])
    small_goal.user_id = current_user.id
    small_goal.destroy
    redirect_to user_path(current_user.id), notice:"小目標を削除しました"
  end
  
  
  private
  
  def small_goal_params
    params.require(:small_goal).permit(:small_goal_content, :small_goal_when, :small_goal_why, :small_goal_action)
  end
  
  def ensure_correct_user
    @small_goal = SmallGoal.find(params[:id])
    unless @small_goal.user_id == current_user.id
      redirect_to root_path
    end
  end
end
