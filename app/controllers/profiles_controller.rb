class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  
  def edit
    @user = User.find(params[:user_id])
    @profile = @user.profile
  end

  def update
    @user = User.find(params[:user_id])
    @profile = @user.profile
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Profile updated!"
      redirect_to user_profile_path([@user])
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @github = @user.github
    @proposal = Proposal.new
  end
end
