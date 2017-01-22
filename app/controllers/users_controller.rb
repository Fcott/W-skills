class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.user_skills
  end
end
