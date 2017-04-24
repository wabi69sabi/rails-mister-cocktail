class RemovePhotoFromCocktail < ActiveRecord::Migration[5.0]
  def change
    remove_column :photo, :cocktails, :string
  end
end
