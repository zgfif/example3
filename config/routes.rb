Rails.application.routes.draw do
  devise_for :users
  
  resources :books, only: [:index,:show]
  resources :users, only: [:index,:show]
  resources :authors, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :locations, only:[:index, :show]
  get 'welcome/index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	resources :books, except: [:index,:show]
    resources :authors, except: [:index, :show]
    resources :genres, except: [:index,:show]
    resources :users, except: [:index, :show]
    resources :locations, except: [:index,:show]
  end
end
