class Public::SchedulesController < ApplicationController
  
  before_action :authenticate_user!
  
  def month_index
    @schedules = Schedule.all
  end
  
  def week_index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.user_id = current_user.id
    if @schedule.save!
      redirect_to schedules_month_index_path, notice:"予定を作成しました"
    else
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    schedule = Schedule.find(params[:id])
    if schedule.update(schedule_params)
      redirect_to schedules_month_index_path, notice:"予定を更新しました"
    else
      render :edit
    end
  end
  
  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to schedules_month_index_path, notice:"予定を削除しました"
  end
  
  
  private
  
  def schedule_params
    params.require(:schedule).permit(:title, :content, :start_time, :finish_time )
  end
end
