class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.float :price
      t.string :category

      t.timestamps
    end
  end
end
