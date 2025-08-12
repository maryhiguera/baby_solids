json.id food.id
json.name food.name
json.min_age_months food.min_age_months
json.texture food.texture
json.ingredients food.ingredients
json.instructions food.instructions
json.is_allergen food.is_allergen
json.category food.category
json.image_url food.image_url
json.food_logs food.food_logs

json.food_logs food.food_logs do |food_log|
  json.id food_log.id
  json.reaction food_log.reaction
  json.notes food_log.notes
end

json.babies food.babies do |baby|
  json.id baby.id
  json.name baby.name
end
