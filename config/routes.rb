CourseProject::Application.routes.draw do
#  create all 7 get/post/put route types
#  resources :posts

  root to: "posts#index"

  match 'post/:id' => 'posts#show', :as => :post
  match 'submit' => 'posts#new'
  match 'create' => 'posts#create'

end
