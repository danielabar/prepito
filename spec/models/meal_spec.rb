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
require 'rails_helper'

RSpec.describe Meal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
