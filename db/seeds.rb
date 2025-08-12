# db/seeds.rb

puts "🗑 Clearing old data..."
FoodLog.destroy_all
Baby.destroy_all
User.destroy_all
Food.destroy_all

# --------------------
# Seed Foods
# --------------------
foods = [
  { name: "Mashed Banana", min_age_months: 6, texture: "smooth puree", ingredients: [ "banana" ], instructions: "Mash ripe banana with a fork until smooth.", is_allergen: false, category: "fruit", image_url: "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?q=80&w=1760&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Steamed Carrot Puree", min_age_months: 6, texture: "smooth puree", ingredients: [ "carrots", "water" ], instructions: "Steam carrots until soft, then puree with water.", is_allergen: false, category: "vegetable", image_url: "https://images.unsplash.com/photo-1639427444459-85a1b6ac2d68?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Avocado Mash", min_age_months: 6, texture: "soft mash", ingredients: [ "avocado" ], instructions: "Mash avocado until smooth.", is_allergen: false, category: "fruit", image_url: "https://images.unsplash.com/photo-1601039641847-7857b994d704?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Apple Sauce", min_age_months: 6, texture: "smooth puree", ingredients: [ "apples", "water" ], instructions: "Peel, core, and steam apples. Puree until smooth.", is_allergen: false, category: "fruit", image_url: "https://media.istockphoto.com/id/1370706368/photo/apple-sauce-or-apple-pureed-compote-homemade-with-raw-red-apples-on-white.jpg?s=1024x1024&w=is&k=20&c=4hqIiQupPwj4-FMQ6qQSI8ERD1HQXVlykMf7sFLNC_w=" },
  { name: "Sweet Potato Puree", min_age_months: 6, texture: "smooth puree", ingredients: [ "sweet potato" ], instructions: "Bake or steam, then puree.", is_allergen: false, category: "vegetable", image_url: "https://images.unsplash.com/photo-1730815048561-45df6f7f331d?q=80&w=1331&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Peanut Butter Thin Spread", min_age_months: 6, texture: "smooth spread", ingredients: [ "peanut butter", "water" ], instructions: "Thin peanut butter with warm water and serve in small amounts.", is_allergen: true, category: "protein", image_url: "https://plus.unsplash.com/premium_photo-1701210417955-d1b61e1dc9eb?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Scrambled Egg", min_age_months: 6, texture: "soft curds", ingredients: [ "egg", "butter" ], instructions: "Cook egg on low heat until soft curds form.", is_allergen: true, category: "protein", image_url: "https://plus.unsplash.com/premium_photo-1700004500841-58c93123cf05?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Oatmeal", min_age_months: 6, texture: "smooth mash", ingredients: [ "oats", "water" ], instructions: "Cook oats until soft, then mash or puree.", is_allergen: false, category: "grain", image_url: "https://plus.unsplash.com/premium_photo-1669559809547-6e4c4fe41371?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Steamed Broccoli Florets", min_age_months: 8, texture: "soft finger food", ingredients: [ "broccoli" ], instructions: "Steam until soft enough to mash with fingers.", is_allergen: false, category: "vegetable", image_url: "https://images.unsplash.com/photo-1685504445355-0e7bdf90d415?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Blueberry Puree", min_age_months: 6, texture: "smooth puree", ingredients: [ "blueberries", "water" ], instructions: "Steam briefly, then puree.", is_allergen: false, category: "fruit", image_url: "https://images.unsplash.com/photo-1498557850523-fd3d118b962e?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Chicken Puree", min_age_months: 7, texture: "smooth puree", ingredients: [ "chicken breast", "water" ], instructions: "Cook fully, then puree with water.", is_allergen: false, category: "protein", image_url: "https://plus.unsplash.com/premium_photo-1663840345377-3813d196d5da?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Yogurt", min_age_months: 6, texture: "smooth", ingredients: [ "whole milk yogurt" ], instructions: "Serve plain yogurt with no added sugar.", is_allergen: true, category: "dairy", image_url: "https://images.unsplash.com/photo-1571212515416-fef01fc43637?q=80&w=682&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" }
]

puts "🍎 Creating foods..."
foods.each { |food| Food.create!(food) }

# --------------------
# Seed Users
# --------------------
puts "👤 Creating users..."
user1 = User.create!(name: "Alice Johnson", email: "alice@example.com", password: "password", admin: false)
user2 = User.create!(name: "Bob Smith", email: "bob@example.com", password: "password", admin: false)
admin = User.create!(name: "Admin User", email: "admin@example.com", password: "password", admin: true)

# --------------------
# Seed Babies
# --------------------
puts "👶 Creating babies..."
baby1 = Baby.create!(name: "Emma", birthdate: "2024-01-15", user_id: user1.id)
baby2 = Baby.create!(name: "Liam", birthdate: "2023-10-05", user_id: user1.id)
baby3 = Baby.create!(name: "Noah", birthdate: "2024-03-20", user_id: user2.id)

# --------------------
# Seed Food Logs
# --------------------
puts "📒 Creating food logs..."
FoodLog.create!(baby_id: baby1.id, food_id: Food.first.id, reaction: "Loved it!", notes: "No reaction, ate the whole serving.", user_id: user1.id)
FoodLog.create!(baby_id: baby1.id, food_id: Food.find_by(name: "Avocado Mash").id, reaction: "Neutral", notes: "Messy but fun.", user_id: user1.id)
FoodLog.create!(baby_id: baby2.id, food_id: Food.find_by(name: "Peanut Butter Thin Spread").id, reaction: "Liked it", notes: "No allergy symptoms observed.", user_id: user1.id)
FoodLog.create!(baby_id: baby3.id, food_id: Food.find_by(name: "Apple Sauce").id, reaction: "Loved it!", notes: "Kept asking for more.", user_id: user2.id)
FoodLog.create!(baby_id: baby3.id, food_id: Food.find_by(name: "Scrambled Egg").id, reaction: "Disliked", notes: "Made a funny face.", user_id: user2.id)

puts "✅ Done seeding! Created:"
puts "   - #{Food.count} foods"
puts "   - #{User.count} users"
puts "   - #{Baby.count} babies"
puts "   - #{FoodLog.count} food logs"
