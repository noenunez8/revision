Rails.application.routes.draw do
  devise_for :users
  resources :center_attention_employees
  resources :tracings
  resources :pregnancy_controls
  resources :mother_sons
  resources :babies
  resources :mothers
  resources :doctors
  resources :specialities
  resources :center_attentions
  resources :directions
  resources :locations
  resources :provinces
  resources :countries

  root "center_attention_employees#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
