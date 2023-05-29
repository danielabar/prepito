# == Schema Information
#
# Table name: meals
#
#  id         :bigint           not null, primary key
#  cook_day   :enum
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

  enum cook_day: {
    weeknight: "weeknight",
    weekend: "weekend"
  }
end
