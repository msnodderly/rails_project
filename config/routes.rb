CourseProject::Application.routes.draw do
  #  create all 7 get/post/put route types
#  resources :posts

  root to: "posts#index"
end
