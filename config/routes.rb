Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
        devise_for :users
        
        get :search, controller: :welcome
        get :autocomplete, controller: :welcome
        get '/rule' => 'pages#rule'
        get '/our_team' => 'pages#our_team'
        get '/contact' => 'pages#contact'
        get '/about' => 'pages#about'
        resources :books, only: [:index,:show]
        # resources :users, only: [:index,:show]
        resources :feedbacks, only: [:new,:create]
        resources :authors, only: [:index, :show]
        resources :genres, only: [:index, :show]
        resources :locations, only:[:index, :show]
        get 'welcome/index'
        
        root 'welcome#index'
        # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        namespace :admin do
          get :new_author_at_book, controller: :authors
          get :new_genre_at_book, controller: :genres  
          resources :feedbacks, except: [:new,  :create]
          resources :books, except: [:index,:show]
          resources :authors, except: [:index, :show]
          resources :genres, except: [:index,:show]
          resources :users#, except: [:index, :show]
          resources :locations, except: [:index,:show]
           resources :statistic, only: :index
          
        end  
  end    
end
