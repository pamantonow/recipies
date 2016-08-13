class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
		if params[:search]
    	@ingredients = Ingredient.search(params[:search]).order("created_at DESC")
  	else
  	 	@ingredients = Ingredient.all.order('created_at DESC')
  	end

  	render  :partial => 'ingredients/index', locals: {ingredients: @ingredients}
	end

  def new
  	@ingredient = Ingredient.new
  	render :'ingredients/new'
  end

  def create
  	@ingredient = Ingredient.new(ingredients_params)
  	if @ingredient.save
  		flash[:notice] = "Succesfully created the ingredient"
  		redirect_to ingredient_path(@ingredient)
  	else
  		render :'ingredients/new'
  	end
  end

  def show
  	@ingredient = Ingredient.find_by(id: params[:id])
  	render :'ingredients/show'
  end

 
  

  private

  	def ingredients_params
  		params.require(:ingredient).permit(:name,:description,:food_group)
  	end
end
