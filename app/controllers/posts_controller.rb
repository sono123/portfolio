class PostsController < ApplicationController
  before_action :block_pending_posts, only: :show, :unless => :admin?
  before_action :block_new_post_form, only: :new, :unless => :admin?
  before_action :block_edit_post_form, only: :edit, :unless => :admin?


  # Move these logged in methods to a separate file.

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user
  end

  def logged_in?
    if current_user
      true
    else
      false
    end
  end

  def admin?
    if current_user
      if current_user.email == "steveono@gmail.com"
        true
      else
        false
      end
    else
      false
    end
  end


  def index
  	@posts = Post.all.sort_by(&:created_at).reverse
    @featured = Post.where(featured: true).sort_by(&:created_at).reverse
  	@categories = Category.all
  end

  def show
  	@post = Post.find(params[:id])
    @pictures = @post.pictures

    respond_to do |format|
      format.html
      format.json {render json: @post}
    end
  end

  def new
  	@categories = Category.all
    @post = Post.new
  end

  def create
    if verify_recaptcha
      # 10.times { puts "*" }
      # puts "RECAPTCHA VERIFIED"
      # 10.times { puts "*" }

      @post = Post.new(post_params)

      respond_to do |format|
        if @post.save
         
          if params[:images]
            params[:images].each { |image|
              @post.pictures.create(image: image)
            }
          end

          format.html { redirect_to @post, notice: 'Post was successfully created.' }
          format.json { render json: @post, status: :created, location: @post }
        else
          format.html { render action: "new", notice: 'Your post could not be submitted. Check fields carefully.' }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    else
      # 10.times { puts "*" }
      # puts "RECAPTCHA NOT VERIFIED"
      # 10.times { puts "*" }

      flash[:post_error] = "Recaptcha Failed. Please try again."
      redirect_to '/contact'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if params[:approved]
        @post.update_attributes("approved" => params[:approved])
        format.html  { redirect_to('/posts', :notice => 'Post was successfully updated.') }
        format.json  { head :no_content }
      elsif params[:featured]
        @post.update_attributes("featured" => params[:featured])
        format.html  { redirect_to('/posts', :notice => 'Post was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end



  private


  def block_pending_posts
    @post = Post.find(params[:id])
    unless @post.approved
      redirect_to '/posts'
    end
  end

  def block_new_post_form
    redirect_to root_path
  end

  def block_edit_post_form
    redirect_to root_path
  end


  def post_params
    params.require(:post).permit(:category_id, 
                                 :title, 
                                 :image_url, 
                                 :author, 
                                 :body
                                 )
  end

end







