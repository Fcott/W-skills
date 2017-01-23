class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.user_skills.points_desc
    @feature_skills = @skills.first(6)
  end
end
