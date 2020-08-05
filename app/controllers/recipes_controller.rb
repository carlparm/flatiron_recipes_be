class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes.to_json(
            :include => {:recipe_ingredients => {:except => [:created_at, :updated_at]},
            :comments => {:except => [:created_at, :updated_at]},
              :user => {:except => [:created_at, :updated_at]}}
        )
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe.to_json(
            :include => {:recipe_ingredients => {:except => [:created_at, :updated_at]},
                          :comments => {:except => [:created_at, :updated_at]},
                            :user => {:except => [:created_at, :updated_at]},
                            :ingredients => {:except => [:created_at, :updated_at]}}
                            
        )
    end

    def create
        recipe = Recipe.create(user_id: 34, name: params[:name], hours: params[:hours], minutes: params[:minutes], feeds: params[:feeds], directions: params[:directions])
        render json: recipe.to_json(
            :include => {:recipe_ingredients => {:except => [:created_at, :updated_at]},
                          :comments => {:except => [:created_at, :updated_at]},
                            :user => {:except => [:created_at, :updated_at]}}
        )
    end
    
end
