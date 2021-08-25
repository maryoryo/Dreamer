class Public::InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.invalid?
      render :new
    end
  end
  
  def back
    @inquiry = Inquiry.new(inquiry_params)
    render :new
  end
  
  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver_now
      redirect_to inquiries_done_path
    else
      render :new
    end
  end
  
  def done
  end
  
  
  private
  
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :subject, :content)
  end
end
