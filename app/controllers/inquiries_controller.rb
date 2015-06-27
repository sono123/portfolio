class InquiriesController < ApplicationController
  
  def index
  	@inquiries = Inquiry.all
  end

  def show
  end

  def new
  end

  def create
  	inquiry = Inquiry.create(name: params['name'], message: params['message'])
    if admin?(current_user)
  	  redirect_to "/inquiries"
    else
      flash[:success] = "You have successfully submitted an inquiry. I will be back in touch soon."
      redirect_to "/contact"
    end
  end

end
