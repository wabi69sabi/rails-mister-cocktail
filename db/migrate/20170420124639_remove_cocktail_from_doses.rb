class RemoveCocktailFromDoses < ActiveRecord::Migration[5.0]
  def change
    remove_column :doses, :cocktail, :string
  end
end
