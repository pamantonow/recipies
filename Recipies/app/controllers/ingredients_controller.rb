class IngredientsController < ApplicationController

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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  	def ingredients_params
  		params.require(:ingredient).permit(:name,:description,:food_group)
  	end
end
