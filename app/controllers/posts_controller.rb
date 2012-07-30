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
   @users=User.find(params[:user_id])
   @posts=@users.posts.find(params[:id])
  end
  
  def edit
   @users=User.find(params[:user_id])
   @posts=@users.posts.find(params[:id])
  end
  
  def update
   @users=User.find(params[:user_id])
   @posts=@users.posts.find(params[:id])
   @posts.update_attributes(params[:post])
   redirect_to user_path(@users)
  end
  def destroy
   @users=User.find(params[:user_id])
   @posts=@users.posts.find(params[:id])
   @posts.destroy
   redirect_to user_path(@users)
  end
end
