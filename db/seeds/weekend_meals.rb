# https://www.themeatsource.com/bladeroast.html
Meal.create!(name: "Pot Roast", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Roast potatoes", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Rough chop garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Slice onion and dice celery", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Slice carrots and parsnips", days_in_advance: 4, meal:)
end

# https://www.budgetbytes.com/beef-burrito-casserole/
Meal.create!(name: "Beef Burrito Casserole", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Drain and rinse black beans", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Steam rice", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Slice green onion and press garlic", days_in_advance: 1, meal:)
end

# https://www.budgetbytes.com/beef-and-tomato-rice-bowl/
Meal.create!(name: "Beef and Tomato Rice Bowl", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Drain chickpeas", days_in_advance: 4, meal:)
  PrepStep.create!(name: "Dice onion, mushrooms, zucchini", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
end

# https://downshiftology.com/recipes/steak-fajitas/
Meal.create!(name: "Steak Fajitas", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Juice 3 limes", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Slice peppers and onions", days_in_advance: 5, meal:)
  PrepStep.create!(name: "Slice mushrooms and zuchinni", days_in_advance: 4, meal:)
end

# https://www.budgetbytes.com/unstuffed-bell-peppers/
Meal.create!(name: "Unstuffed Bell Peppers", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Dice mushrooms", days_in_advance: 3, meal:)
  PrepStep.create!(name: "Dice peppers and onion", days_in_advance: 4, meal:)
end

# https://downshiftology.com/recipes/italian-meatloaf/
Meal.create!(name: "Meatloaf", day_type: "weekend") do |meal|
  PrepStep.create!(name: "Press garlic", days_in_advance: 2, meal:)
  PrepStep.create!(name: "Dice onion", days_in_advance: 4, meal:)
  PrepStep.create!(name: "Roast frozen veg", days_in_advance: 1, meal:)
  PrepStep.create!(name: "Steam rice", days_in_advance: 2, meal:)
end
