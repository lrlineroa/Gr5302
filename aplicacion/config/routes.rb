Rails.application.routes.draw do
  resources :transport_materials
  resources :visits
  resources :uses
  resources :categories
  resources :environments
  resources :multi_media_types
  resources :multi_media
  resources :recycling_centers
  resources :materials
  resources :users
  resources :multimedia
  resources :roles
  resources :material_types
  resources :multimedia_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
