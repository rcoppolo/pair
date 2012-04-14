class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  
  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Profile updated!"
      redirect_to user_profile_path([current_user])
    else
      render 'edit'
    end
  end

  def show
    @user = current_user
    @github = @user.github
  end
end
