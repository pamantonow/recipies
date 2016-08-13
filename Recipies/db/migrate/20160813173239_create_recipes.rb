class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
			t.string :name
			t.text :description
			t.text :instructions
			t.references :ingredient
			t.boolean :vegetarian, default: false

      t.timestamps null: false
    end
  end
end
