class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user[:username] = :username
    @user[:password] = :password
  end

  def edit
  end

  def delete
  end

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require
end

end
