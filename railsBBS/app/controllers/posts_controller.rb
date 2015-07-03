class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
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
    @post = Post.find(params[:index])
  end

  private
    def post_params
      params[:post].permit(:title, :text) # form のtitleのみ許可
    end

end
