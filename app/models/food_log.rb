class FoodLog < ApplicationRecord
  belongs_to :baby
  belongs_to :food
  belongs_to :user
end
