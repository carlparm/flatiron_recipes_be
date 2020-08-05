class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :glutenfree

      t.timestamps
    end
  end
end
