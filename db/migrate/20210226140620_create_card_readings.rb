class CreateCardReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :card_readings do |t|
      t.references :card, null: false, foreign_key: true
      t.references :reading, null: false, foreign_key: true

      t.timestamps
    end
  end
end
