class RenameModelPlusingToPlusing < ActiveRecord::Migration[5.0]
  def change
    rename_table :plucings, :plusings
  end
end
