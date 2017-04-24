class Cocktail < ApplicationRecord
  mount_uploader :picture, PictureUploader
  # db relations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # Validations
  validates :name, uniqueness: true, presence: true
end



# RAKE
# Cocktail
# has a name
# name cannot be blank
# name is unique
# has many doses
# should destroy child doses when destroying self (FAILED - 1)
# has many ingredients (FAILED - 2)


