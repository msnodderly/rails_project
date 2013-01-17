CourseProject::Application.routes.draw do
#  create all 7 get/post/put route types
#  resources :posts

  root to: "posts#index"

  match 'post/:id' => 'posts#show', :as => :post
  match 'submit' => 'posts#new'
  match 'create' => 'posts#create'
  match 'create_comment' => 'comments#create'

  match 'votes' => 'votes#create'

  get 'register' => 'users#new', :as => :register
  get 'login' => 'sessions#new', :as => :login
  post 'login' => 'sessions#create', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout

  match 'user/:id' => 'users#show', :as => :user

  resources :users, only: [:create]
    
  

end
