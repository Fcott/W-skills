class PlusingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user_skill = UserSkill.find(params[:user_skill_id])
    current_user.plus!(@user_skill)
    @user_skill.increment!(:points)
  end

  def destroy
    @user_skill = Plusing.find(params[:id]).user_skill
    current_user.unplused!(@user_skill)
    @user_skill.decrement!(:points)
  end
end
