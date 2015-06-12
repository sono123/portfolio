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
  	redirect_to "/inquiries"
  	# redirect_to :back
  end

end
