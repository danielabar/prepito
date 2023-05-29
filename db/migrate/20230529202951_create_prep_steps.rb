class CreatePrepSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :prep_steps do |t|
      t.string :name, null: false
      t.text :description
      t.integer :days_in_advance, null: false, default: 0
      t.references :meal, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
