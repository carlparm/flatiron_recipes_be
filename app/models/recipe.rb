class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :comments
  validates :name, presence: true
  validates :hours, presence: true
  validates :minutes, presence: true
  validates :feeds, presence: true
  validates :directions, presence: true
end
