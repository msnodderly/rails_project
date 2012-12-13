CourseProject::Application.routes.draw do
  resources :posts
  #get "posts/new"

  root to: "main#index"
end
