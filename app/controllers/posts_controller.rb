class PostsController < ApplicationController

  def index
  	@posts = Post.all
  	@categories = Category.all
  end

  def show
  	@post = Post.find(params["id"])
  end

  def new
  	@categories = Category.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  
    if @post.save
      flash[:notice] = "Successfully created post."
      redirect_to @post
    else
      render :action => 'new'
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_image(params)
      # @image = Image.create(params['post']['images_attributes'][0]['asset'])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:category_id, :title, :image_url, :author, :body, :created_at, :updated_at)
  end

end







