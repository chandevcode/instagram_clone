class PostsController < ApplicationController
  # GET /posts or /posts.json
  def index
    @posts = Post.order(created_at: :desc).all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    current_user.posts << @post

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to root_path }
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :file)
  end
end
