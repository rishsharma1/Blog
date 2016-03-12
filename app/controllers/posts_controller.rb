class PostsController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy,:new,:create]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post deleted"
    redirect_to root_path
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "The post was posted!"
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "The post was updated!"
      redirect_to @post
    else
      render 'edit'
    end

  end

  private

  def post_params
    params.require(:post).permit(:title,:content,:description)
  end



end
