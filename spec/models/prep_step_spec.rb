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
require 'rails_helper'

RSpec.describe PrepStep, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
