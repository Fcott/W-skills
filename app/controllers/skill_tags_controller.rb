class SkillTagsController < ApplicationController
  before_action :authenticate_user!

  def show
    @skill_tag = SkillTag.find(params[:id])
    @users = @skill_tag.skilled_users
  end

  def create
    @skill_tag = SkillTag.find_or_create_by(name: skill_tags_params[:name])
    if @skill_tag
      @user_skill = UserSkill.find_or_create_by(user_id: params[:skill_tag][:user_id], skill_tag_id: @skill_tag.id)
      Adding.find_or_create_by(user_id: params[:skill_tag][:added_user_id], user_skill_id: @user_skill.id)
      respond_to do |format|
        format.html { redirect_back(fallback_location: root_path) }
      end
    end
  end


  private
  def skill_tags_params
    params.require(:skill_tag).permit(:name)
  end
end
