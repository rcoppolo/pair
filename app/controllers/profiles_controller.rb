class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  
  def edit
  end

  def update
  end

  def show
    @user = current_user
    @github = @user.github
    puts "*" * 50
    puts @user.profile.inspect
    puts "*" * 50
  end
end
