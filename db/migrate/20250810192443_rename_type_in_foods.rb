class RenameTypeInFoods < ActiveRecord::Migration[8.0]
  def change
    rename_column :foods, :type, :category
  end
end
