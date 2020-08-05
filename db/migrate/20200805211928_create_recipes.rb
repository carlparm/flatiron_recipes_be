class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :hours
      t.integer :minutes
      t.integer :feeds
      t.text :directions
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
