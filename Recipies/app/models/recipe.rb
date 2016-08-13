class Recipe < ActiveRecord::Base
	belongs_to :ingredient
	validates :name, :description, :instructions , presence: true
end
