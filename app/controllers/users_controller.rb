class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.user_skills.points_desc 
  end
end
