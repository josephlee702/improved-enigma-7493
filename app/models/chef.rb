class Chef < ApplicationRecord
  validates_presence_of :name
  has_many :dishes
  has_many :ingredients, through: :dishes

  def uniq_ingredients
    Ingredient.distinct.pluck(:name)
  end
end