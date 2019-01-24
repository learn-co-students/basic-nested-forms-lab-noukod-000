class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])

  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name:"",quantity:0)
    @recipe.ingredients.build(name:"",quantity:0)
  end

  def create
    @recipe = Recipe.create(recipes_params)
    puts @recipe.inspect
    puts recipes_params.inspect
    redirect_to recipes_path
  end


  def recipes_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes:[
          :name,
          :quantity
      ]
    )
  end
end
