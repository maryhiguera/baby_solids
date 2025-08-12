class AddUserIdToBabiesAndFoodLogs < ActiveRecord::Migration[8.0]
  def change
    add_column :babies, :user_id, :integer
    add_column :food_logs, :user_id, :integer
  end
end
