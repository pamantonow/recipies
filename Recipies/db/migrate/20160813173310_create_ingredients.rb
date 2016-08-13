class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.string :name
			t.text :description
			t.string :food_group

      t.timestamps null: false
    end
  end
end
