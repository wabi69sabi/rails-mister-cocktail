class Ingredient < ApplicationRecord
  before_destroy :check_for_children, prepend: true

  has_many :doses
  has_many :cocktails, through: :doses
  # Validations
  validates :name, uniqueness: true, presence: true

  def check_for_children
    if !Dose.where(ingredient_id: self.id).nil?
      errors[:base] << "Whatever"
      # raise ActiveRecord::InvalidForeignKey
      return false
    end
  end
end


# RAKE
# Ingredient
# has a name
# name cannot be blank
# name is unique
# has many doses (FAILED - 8)
# should not be able to destroy self if has dose children (FAILED - 9)
