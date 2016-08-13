module RecipesHelper

	def search_ingredient
			Ingredient.where(food_group: params[:food_group])
	end
end
