Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ratings
  resources :comments
  resources :recipes
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
