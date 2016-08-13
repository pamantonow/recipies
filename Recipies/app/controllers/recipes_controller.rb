class RecipesController < ApplicationController

	def new
		@recipe = Recipe.new
		render :'recipes/new'
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to recipe_path(@recipe)
		else
			render :'recipes/new'
		end
	end


	def show
		@recipe = Recipe.find(params[:id])
		render :'recipes/show'
	end

	def edit
  	@recipe = Recipe.find(params[:id])
  	render :'recipes/edit'
  end

  def update
  	@recipe = Recipe.find(params[:id])
  	@recipe.update_attributes(recipe_params)
  	if @recipe.save
  		redirect_to recipe_path(@recipe)
  	else
  		render :'recipes/edit'
  	end	
  end


	private

	def recipe_params
		params.require(:recipe).permit(:name,:description,:ingredient_id, :vegetarian, :instructions)
	end
end
