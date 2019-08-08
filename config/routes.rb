Rails.application.routes.draw do
  devise_for :authors


  resources :books
  resources :accouts
  root to: "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
