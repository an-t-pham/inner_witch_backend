class ChangeDescriptionToBeTextInCards < ActiveRecord::Migration[6.0]
  def change
    change_column :cards, :description, :text
  end
end
