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
  image_url: "https://unsplash.com/photos/yellow-bananas-fczCr7MdE7U"
)

food2 = Food.create!(
  name: "Avocado Puree",
  min_age_months: 6,
  texture: "puree",
  ingredients: [ "avocado" ],
  instructions: "Cut avocado, remove seed, and mash until smooth.",
  is_allergen: false,
  category: "Fruit",
  image_url: "https://unsplash.com/photos/sliced-avocado-fruit-on-brown-wooden-table-cueV_oTVsic"
)

food3 = Food.create!(
  name: "Carrot Sticks",
  min_age_months: 12,
  texture: "soft pieces",
  ingredients: [ "carrots" ],
  instructions: "Steam carrots until soft and cut into sticks.",
  is_allergen: false,
  category: "Vegetable",
  image_url: "https://unsplash.com/photos/3-carrots-on-brown-wooden-table-R198mTymEFQ"
)

food4 = Food.create!(
  name: "Peanut Butter",
  min_age_months: 12,
  texture: "spread",
  ingredients: [ "peanuts" ],
  instructions: "Serve a small amount of smooth peanut butter.",
  is_allergen: true,
  category: "Nut",
  image_url: "https://unsplash.com/photos/a-jar-filled-with-peanut-butter-next-to-a-spoon-T4bjtflYYe4"
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
