Rails.application.routes.draw do

  resources :cocktails, only: [:show, :index, :new, :create] do
     resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]
  root "cocktails#index"
end
