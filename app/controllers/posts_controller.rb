class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize_as_admin, only: [:destroy]
  before_action :authorize, only: [:new, :create]
  before_action :check_owner, only: [:edit, :update]

  def index
    @posts = Post.all.page params[:page]
  end

  def show
    @post.increase_visit
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to '/', notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :picture, :picture_cache)
  end

  def check_owner
    redirect_to '/' if currenr_user && (admin?(current_user) || @post.user.id == current_user.id)
  end
end
