class AddTypeAndImageUrlToFoods < ActiveRecord::Migration[8.0]
  def change
    add_column :foods, :type, :string
    add_column :foods, :image_url, :string
  end
end
