class Food < ApplicationRecord
  has_many :food_logs
  has_many :babies, through: :food_logs
end
