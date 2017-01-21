class UserSkillsController < ApplicationController

  def create

  end

  def delete
    #code
  end

  private
  def user_skills_params
    params.reqire(:user_skill).permit(:user_id, :skill_tag_id)
  end
end
