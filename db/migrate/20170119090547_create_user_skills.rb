class CreateUserSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :user_skills do |t|
      t.references :user, null: false
      t.references :skill_tag, null: false
      t.integer :points, null: false, default: 0

      t.timestamps
    end

    add_index :user_skills, [:user_id, :skill_tag_id], unique: true
  end
end
