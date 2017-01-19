class CreateAddings < ActiveRecord::Migration[5.0]
  def change
    create_table :addings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :user_skill, foreign_key: true, null: false, unique: true

      t.timestamps
    end
  end
end
