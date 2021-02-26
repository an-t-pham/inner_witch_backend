class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.integer :cards_in_position, array: true, default: []

      t.timestamps
    end
  end
end
