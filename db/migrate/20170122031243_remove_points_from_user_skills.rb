class RemovePointsFromUserSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_skills, :points, :integer
  end
end
