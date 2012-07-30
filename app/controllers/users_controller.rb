class UsersController < ApplicationController
  def index
	@users=User.all
  end
  def show
	@users=User.find(params[:id])
  end
  def new
	@users=User.new
  end
  def create
	User.create(params[:user])
	redirect_to users_path
  end
  def destroy
	User.find(params[:id]).destroy
	redirect_to users_path
  end
  def edit
	@users=User.find(params[:id])
  end
  def update
        @users=User.find(params[:id])
	@users.update_attributes(params[:user])
 	redirect_to users_path
  end
end
