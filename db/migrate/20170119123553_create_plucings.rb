class CreatePlucings < ActiveRecord::Migration[5.0]
  def change
    create_table :plucings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :user_skill, foreign_key: true, null: false

      t.timestamps
    end
  end
end
