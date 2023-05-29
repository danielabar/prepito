# == Schema Information
#
# Table name: prep_steps
#
#  id              :bigint           not null, primary key
#  days_in_advance :integer          default(0), not null
#  description     :text
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  meal_id         :bigint           not null
#
# Indexes
#
#  index_prep_steps_on_meal_id  (meal_id)
#
# Foreign Keys
#
#  fk_rails_...  (meal_id => meals.id)
#
class PrepStep < ApplicationRecord
  belongs_to :meal

  validates :days_in_advance, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true, uniqueness: { scope: %i[meal_id days_in_advance] }
end
