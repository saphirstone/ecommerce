Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :kittens
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'store#index'
  get '/',to: 'store#index'
  get '/shop',to: 'kittens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
