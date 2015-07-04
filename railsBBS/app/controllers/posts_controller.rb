class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) # formからの値を取得

    if @post.save # DBに保存
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to post
  end

  private
    def post_params
      params[:post].permit(:title, :text) # form のtitleのみ許可
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
