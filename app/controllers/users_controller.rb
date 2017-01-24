class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @user_skills = @user.user_skills.points_desc
    @feature_skills = @user_skills.first(6)
  end
end
