class CreateFoodLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :food_logs do |t|
      t.integer :baby_id
      t.integer :food_id
      t.string :reaction
      t.text :notes

      t.timestamps
    end
  end
end
