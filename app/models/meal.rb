# == Schema Information
#
# Table name: meals
#
#  id         :bigint           not null, primary key
#  day_type   :enum
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_meals_on_name  (name) UNIQUE
#
class Meal < ApplicationRecord
  has_many :prep_steps
  validates :name, presence: true, uniqueness: true

  enum day_type: {
    weeknight: "weeknight",
    weekend: "weekend"
  }
end
