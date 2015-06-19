class ContactController < ApplicationController
  def index
  	@categories = Category.all
    @post = Post.new
  end

  def new
  	@categories = Category.all
    @post = Post.new
  end
end
