PrepStep.destroy_all
Meal.destroy_all

# https://www.thespruceeats.com/what-is-a-ribeye-steak-995257
rib_steak = Meal.create!(name: "Rib Steak and Sautéed Veg", day_type: "weeknight")
PrepStep.create!(name: "Spice mixes", description: "1 tsp salt, 1 tsp pepper", days_in_advance: 7, meal: rib_steak)
PrepStep.create!(name: "Wash fresh thyme", days_in_advance: 0, meal: rib_steak)
PrepStep.create!(name: "Portion butter", days_in_advance: 0, meal: rib_steak)
PrepStep.create!(name: "Smash garlic", days_in_advance: 1, meal: rib_steak)
PrepStep.create!(name: "Slice onion and mushrooms", days_in_advance: 2, meal: rib_steak)
PrepStep.create!(name: "Slice peppers", days_in_advance: 3, meal: rib_steak)

# https://www.budgetbytes.com/one-pot-teriyaki-chicken-and-rice/
teriyaki = Meal.create!(name: "Ground Beef Teriykai", day_type: "weeknight")
PrepStep.create!(name: "Teriyaki sauce", description: "2 tbsp coconut sugar, 1 tsp sriracha, 2 tbsp sesame oil, 1/4 cup soy sauce", days_in_advance: 4, meal: teriyaki)
PrepStep.create!(name: "Toast sesame seeds", description: "2 tbsp sesame seeds", days_in_advance: 3, meal: teriyaki)
PrepStep.create!(name: "Press garlic & grate ginger", days_in_advance: 2, meal: teriyaki)
PrepStep.create!(name: "Slice green onion", days_in_advance: 1, meal: teriyaki)

# https://www.themeatsource.com/bladeroast.html
pot_roast = Meal.create!(name: "Pot Roast and Potatoes", day_type: "weekend")
PrepStep.create!(name: "Spice mixes", description: "2 portions each 1/2 tsp salt, 1/2 tsp pepper, 1/2 tsp parsley", days_in_advance: 7, meal: pot_roast)
PrepStep.create!(name: "Roast potatoes", days_in_advance: 1, meal: pot_roast)
PrepStep.create!(name: "Rough chop garlic", days_in_advance: 2, meal: pot_roast)
PrepStep.create!(name: "Slice onion and dice celery", days_in_advance: 3, meal: pot_roast)
PrepStep.create!(name: "Slice carrots and parsnips", days_in_advance: 4, meal: pot_roast)

# https://www.budgetbytes.com/beef-burrito-casserole/
burrito_casserole = Meal.create!(name: "Beef Burrito Casserole", day_type: "weekend")
PrepStep.create!(name: "Spice mixes", description: "1/8 tsp salt, 1/8 tsp pepper, 1/2 tbsp chilli powder", days_in_advance: 7, meal: burrito_casserole)
PrepStep.create!(name: "Drain and rinse black beans", days_in_advance: 3, meal: burrito_casserole)
PrepStep.create!(name: "Steam rice", days_in_advance: 2, meal: burrito_casserole)
PrepStep.create!(name: "Slice green onion and press garlic", days_in_advance: 1, meal: burrito_casserole)
