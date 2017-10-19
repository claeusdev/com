Rails.application.routes.draw do

  get :search, controller: :search
  get 'users/show'

  get :about, :to => 'pages#about'

  get :contact, :to => 'pages#contact'

  get :sell, :to => 'pages#sell'

  get :careers, to: 'pages#careers'

  get :blog, to: 'pages#blog'
  
  resources :notifications do
    collection do
      post :mark_as_read
    end
  end

  resources :categories
  resources :stores do
  	resources :products do
      resources :comments
      member do
        post "like", :to => 'likes#create'
        delete "unlike", :to => 'likes#destroy'
      end
    end

  	get 'dashboard'

    member do
      post 'follow', :to => 'followings#create'
      delete 'unfollow', :to => 'followings#destroy'
    end
  end
  
  get 'pages/index'

  devise_for :users, controllers: {:registrations => 'users/registrations'}
  resources :users, only: [:show, :index]
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
