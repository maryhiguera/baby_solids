json.id baby.id
json.name baby.name
json.birthdate baby.birthdate

json.foods baby.foods do |food|
  json.id food.id
  json.name food.name
end

json.food_logs baby.food_logs do |food_log|
  json.id food_log.id
  json.reaction food_log.reaction
  json.notes food_log.notes
end
