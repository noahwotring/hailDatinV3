class ProfilesController < ApplicationController
  def new
      @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def show
    @profile = Profile.find(params[:id])
    if @profile.name == nil
      redirect_to edit_profile_path
    end
  end

  def create
    new_profile = Profile.new(profile_params)
    new_profile.save
    session[:profile_id] = new_profile.id
    redirect_to profile_path new_profile
  end

  def update
    profile = Profile.find_by(user_id: current_user.id)
    profile.update(profile_params)
    profile.save
    redirect_to user_profile_path(profile)
  end

  def destroy
    Profile.find(params[:id]).destroy
    redirect_to profiles_path
  end

  def index
    @profiles=Profile.all
  end

  private

  def profile_params

    params.require(:profile).permit(:name, :about)
  end
end
