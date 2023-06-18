class AddDayTypeToMeals < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL.squish
      CREATE TYPE meal_day_type AS ENUM ('weeknight', 'weekend');
    SQL
    add_column :meals, :day_type, :meal_day_type
  end

  def down
    remove_column :meals, :day_type
    execute <<-SQL.squish
      DROP TYPE meal_day_type;
    SQL
  end
end
