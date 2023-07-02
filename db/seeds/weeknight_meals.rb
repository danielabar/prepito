# https://www.thespruceeats.com/what-is-a-ribeye-steak-995257
Meal.create!(name: "Rib Steak and Sautéed Veg", day_type: "weeknight") do |meal|
  PrepStep.create!(name: "Wash fresh thyme", days_in_advance: 0, meal:)
  PrepStep.create!(name: "Portion butter", days_in_advance: 0, meal:)
  PrepStep.create!(name: "Smash garlic", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Slice onion and mushrooms", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Slice peppers", days_in_advance: 3, meal:)
end

# https://www.budgetbytes.com/one-pot-teriyaki-chicken-and-rice/
Meal.create!(name: "Ground Beef Teriyaki", day_type: "weeknight") do |meal|
  PrepStep.create!(name: "Teriyaki sauce", description: "2 tbsp coconut sugar, 1 tsp sriracha, 2 tbsp sesame oil, 1/4 cup soy sauce", days_in_advance: 4, meal:)
  PrepStep.create!(name: "Measure rice", description: "1.5 cups", days_in_advance: 4, meal:)
  PrepStep.create!(name: "Toast sesame seeds", description: "2 tbsp sesame seeds", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Press garlic & grate ginger", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Slice green onion", days_in_advance: 1, meal:)
end

# https://www.budgetbytes.com/beef-cabbage-stir-fry/
Meal.create!(name: "Beef and Cabbage Stir Fry") do |meal|
  PrepStep.create!(name: "Slice green onion", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Steam rice", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Press garlic & grate ginger", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Toast sesame seeds", description: "2 tbsp sesame seeds", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Make stir fry sauce", days_in_advance: 4, meal:)
end

# https://downshiftology.com/recipes/best-baked-salmon/
Meal.create(name: "Baked Fish", day_type: "weeknight") do |meal|
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Grate lemon zest", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Roast frozen veg", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Steam rice", days_in_advance: 2, meal:)
end

# https://downshiftology.com/recipes/beef-shish-kabob/
Meal.create(name: "Marinated Sirloin Steak", day_type: "weeknight") do |meal|
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Make marinade", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Slice onions, peppers, mushrooms", days_in_advance: 3, meal:)
end
