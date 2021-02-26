class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :card_type
      t.string :meaning_up
      t.string :meaning_rev
      t.string :description

      t.timestamps
    end
  end
end
