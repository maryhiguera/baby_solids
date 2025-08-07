class CreateBabies < ActiveRecord::Migration[8.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.date :birthdate

      t.timestamps
    end
  end
end
