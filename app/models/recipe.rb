class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredient_attributes=(ingred)
  #   self.ingredient = Ingredient.find_or_create_by(name: ingred.name)
  #   self.ingredients.update(artist)
  # end
end
