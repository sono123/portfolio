class PostsController < ApplicationController

  def index
  	@posts = Post.all
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
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
       
        if params[:images]
          #===== The magic is here ;)
          params[:images].each { |image|
            @post.pictures.create(image: image)
          }
        end

        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes("approved" => true)
        format.html  { redirect_to(@post,
                      :notice => 'Post was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @post.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  def destroy
  end



  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:category_id, 
                                 :title, 
                                 :image_url, 
                                 :author, 
                                 :body
                                 )
  end

end







