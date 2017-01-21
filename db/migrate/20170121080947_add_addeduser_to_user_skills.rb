class AddAddeduserToUserSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :user_skills, :added_user_id, :integer
  end
end
