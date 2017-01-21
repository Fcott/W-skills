class RemoveAddeduserFromUserskills < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_skills, :added_user_id, :integer
  end
end
