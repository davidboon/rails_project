class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
    @users=User.find(params[:user_id])
    @posts=@users.posts.new
  end

  def create
   @users=User.find(params[:user_id])
   @posts=@users.posts.create(params[:post])
   redirect_to user_path(@users)
  end

  def show
   @users=User.find(params[:id])
   @posts=@users.posts.find(params[:user_id])
  end
end
