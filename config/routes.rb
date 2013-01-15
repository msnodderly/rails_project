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
  resources :users, only: [:create]
    
  

end
