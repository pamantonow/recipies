class Ingredient < ActiveRecord::Base
	has_many :recipes
	validates :name, :description,:food_group,  presence: true

	def self.search(search)
 	 	where("food_group LIKE ?", "%#{search}%")
	end

end
