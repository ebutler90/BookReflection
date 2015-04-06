class UsersController < ApplicationController

  def new
    # how are you supposed to call this?
    @user = User.new
  end

  def create
    @new_user = User.new(user_params)
      if @new_user.save
        session[:user_id] = user.id
        redirect_to '/users/:id'
      else
        redirect_to '/'
      end
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :age, :email, :password)
  end


end
