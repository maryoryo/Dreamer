class Public::LookBacksController < ApplicationController
  
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def show
    @look_back = LookBack.find(params[:id])
    @look_back.user_id = current_user.id
  end

  def new
    @look_back = LookBack.new
  end
  
  def create
    @look_back = LookBack.new(look_back_params)
    @look_back.user_id = current_user.id
    if @look_back.save
      redirect_to schedules_month_index_path, notice:"#{@look_back.write_time.strftime("%m月 %d日")} の振り返りを作成しました"
    else
      render :new
    end
  end

  def edit
    @look_back = LookBack.find(params[:id])
    @look_back.user_id = current_user.id
  end
  
  def update
    @look_back = LookBack.find(params[:id])
    @look_back.user_id = current_user.id
    if @look_back.update(look_back_params)
      redirect_to schedules_month_index_path, notice:"#{@look_back.write_time.strftime("%m月 %d日")} の振り返りを更新しました"
    else
      render :edit
    end
  end
  
  def destroy
    look_back = LookBack.find(params[:id])
    look_back.user_id = current_user.id
    look_back.destroy
    redirect_to schedules_month_index_path, notice:"#{@look_back.write_time.strftime("%m月 %d日")} の振り返りを削除しました"
  end
  
  
  private
  
  def look_back_params
    params.require(:look_back).permit(:write_time, :achievement_check, :good_thing, :bad_thing)
  end
  
  def ensure_correct_user
    @look_back = LookBack.find(params[:id])
    unless @look_back.user_id == current_user.id
      redirect_to root_path
    end
  end
end
