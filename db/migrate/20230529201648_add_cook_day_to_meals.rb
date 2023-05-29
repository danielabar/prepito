class AddCookDayToMeals < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL.squish
      CREATE TYPE meal_cook_day AS ENUM ('weeknight', 'weekend');
    SQL
    add_column :meals, :cook_day, :meal_cook_day
  end

  def down
    remove_column :meals, :cook_day
    execute <<-SQL.squish
      DROP TYPE meal_cook_day;
    SQL
  end
end
