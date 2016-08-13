class Ingredient < ActiveRecord::Base
	has_many :recipes
	validates :name, :description,:food_group,  presence: true

end
