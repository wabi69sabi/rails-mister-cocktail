class RemoveIngredientFromDoses < ActiveRecord::Migration[5.0]
  def change
    remove_column :doses, :ingredient, :string
  end
end
