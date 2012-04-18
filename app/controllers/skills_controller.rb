class SkillsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @languages = Language.all
    @skill = current_user.skills.new
  end

  def create
    @skill = current_user.skills.new(params[:skill])
    @skill.language_id = params[:language][:id]
    if @skill.save
      flash[:success] = "Skill created!"
      redirect_to user_profile_path(current_user.id, current_user.profile.id)
      logger.info "informational message: #{'#'*50}"
      
    else
      flash[:error] = "Skill not created!"
      render 'new'
    end
      
  end

  def edit
    @skill = current_user.skills.find_by_id(params[:id])
  end

  def update
    @skill = current_user.skills.find_by_id(params[:id])
    
    if @skill.update_attributes(params[:skill])
      flash[:success] = "Skill updated!"
      redirect_to user_profile_path(current_user.id, current_user.profile.id)
    else
      render 'edit'
    end 
  end

  def destroy
    @skill = current_user.skills.find_by_id(params[:id])
    if @skill.destroy
      flash[:success] = "Skill Deleted!"
      redirect_to user_profile_path(current_user.id, current_user.profile.id)
    else
      render 'edit'
    end
  end
end
