class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

    new_user = User.new(user_params)
    new_user.save
    session[:user_id] = new_user.id
    redirect_to user_path new_user

  end

  def edit
    @user. User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    user.save
    redirect_to user_path user
  end


  def delete
  end

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])

    #@profile = @user.profiles

  end

  private

  def user_params

    params.require(:user).permit(:username, :password, :about, :age, :location, :interests)
  end

end
