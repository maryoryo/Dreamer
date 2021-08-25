class Public::LookBacksController < ApplicationController
  
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def show
    
  end

  def new
  end
  
  def create
    
  end

  def edit
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  
  private
  
  def look_back_params
    params.require(:look_back).permit(:write_time, :achievement_check, :good_thing, :bad_thing)
  end
  
  def ensure_correct_user
    
  end
end
