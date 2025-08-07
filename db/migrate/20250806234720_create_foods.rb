class CreateFoods < ActiveRecord::Migration[8.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :min_age_months
      t.string :texture
      t.string :ingredients, array: true, default: []
      t.text :instructions
      t.boolean :is_allergen, default: false

      t.timestamps
    end
  end
end
