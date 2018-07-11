class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: '0')
    @recipe.ingredients.build(ingredient_type: '1')
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
    :title,
    ingredients_attributes: [
      :ingredient_1,
      :ingredient_2,
      :name,
      :quantity
    ]
    )
end
