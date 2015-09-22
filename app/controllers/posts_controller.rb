class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
end

def show
  @post = Post.find params[:id]
end

def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to root_path
  else
    render :new
  end
end

def detail
  @post = Post.find params[:id]
end

def post_params
  params.require(:post).permit(:title, :body, :created_at,:id)
end

def edit
    @post = Post.find params[:id]
end

  def update
    @post = Post.find params[:id]
    if @post.update params.require(:post).permit(:title, :body)
      redirect_to root_path
    else
      render :edit
    end
  end
end
