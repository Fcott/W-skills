class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.user_skills.points_desc
    @feature_skills_num = 6
    @plused_users_num = 10
  end
end
