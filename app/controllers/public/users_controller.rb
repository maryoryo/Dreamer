class Public::UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]
  
  def index
  end

  def show
    @schedules = Schedule.all
  end


  # def new
  # end
  
  # def create
    
  # end
  
  def edit
  end
  
  def update
    
  end
  
  
  
end
