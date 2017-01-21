class SkillTagsController < ApplicationController

  def show
    @skill_tag = SkillTag.find(params[:id])
    @users = @skill_tag.skilled_users
  end

  def create
    @skill_tag = SkillTag.find_or_create_by(name: skill_tags_params[:name])
    if @skill_tag
      @user_skill = UserSkill.create(user_id: params[:skill_tag][:user_id], skill_tag_id: @skill_tag.id)
      Adding.create(user_id: params[:skill_tag][:added_user], user_skill_id: @user_skill.id)
      redirect_back(fallback_location: root_path)
    end
  end


  private
  def skill_tags_params
    params.require(:skill_tag).permit(:name)
  end

  
end
