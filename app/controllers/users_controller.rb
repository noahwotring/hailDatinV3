class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def index
    @users = User.all
    
  end

  def show
  end

end
