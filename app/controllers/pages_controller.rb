class PagesController < ApplicationController
  def home
    @most_recently_added_skill = UserSkill.created_desc.first
    @highest_points_skill = UserSkill.points_desc.first
    @user_most_number_of_skills = User.find(UserSkill.group(:user_id).order("count_all desc").count.first.first)
    @number_of_skills = UserSkill.group(:user_id).order("count_all desc").count.first.second
  end
end
