Rails.application.routes.draw do
  
  resources :categories
  resources :stores do
  	resources :products

  	get 'dashboard'
  end
  
  get 'pages/index'

  devise_for :users, controllers: {:registrations => 'users/registrations'}

  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
