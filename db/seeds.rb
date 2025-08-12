# db/seeds.rb
Baby.destroy_all
FoodLog.destroy_all
Food.destroy_all

# Babies
baby1 = Baby.create!(
  name: "Emma",
  birthdate: Date.new(2024, 1, 10)
)

baby2 = Baby.create!(
  name: "Liam",
  birthdate: Date.new(2023, 9, 5)
)

# Foods
food1 = Food.create!(
  name: "Mashed Banana",
  min_age_months: 6,
  texture: "puree",
  ingredients: [ "banana" ],
  instructions: "Peel and mash ripe banana until smooth.",
  is_allergen: false,
  category: "Fruit",
  image_url: "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?q=80&w=1760&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

food2 = Food.create!(
  name: "Avocado Puree",
  min_age_months: 6,
  texture: "puree",
  ingredients: [ "avocado" ],
  instructions: "Cut avocado, remove seed, and mash until smooth.",
  is_allergen: false,
  category: "Fruit",
  image_url: "https://images.unsplash.com/photo-1601039641847-7857b994d704?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

food3 = Food.create!(
  name: "Carrot Sticks",
  min_age_months: 12,
  texture: "soft pieces",
  ingredients: [ "carrots" ],
  instructions: "Steam carrots until soft and cut into sticks.",
  is_allergen: false,
  category: "Vegetable",
  image_url: "https://images.unsplash.com/photo-1639427444459-85a1b6ac2d68?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

food4 = Food.create!(
  name: "Peanut Butter",
  min_age_months: 12,
  texture: "spread",
  ingredients: [ "peanuts" ],
  instructions: "Serve a small amount of smooth peanut butter.",
  is_allergen: true,
  category: "Nut",
  image_url: "https://plus.unsplash.com/premium_photo-1701210417955-d1b61e1dc9eb?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

# Food Logs
FoodLog.create!(
  baby: baby1,
  food: food1,
  reaction: "None",
  notes: "Loved the mashed banana!"
)

FoodLog.create!(
  baby: baby2,
  food: food4,
  reaction: "Mild rash",
  notes: "Possible peanut allergy, monitor closely."
)

puts "Seed data created successfully."
