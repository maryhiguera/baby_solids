class Baby < ApplicationRecord
  has_many :food_logs
  has_many :foods, through: :food_logs
end
