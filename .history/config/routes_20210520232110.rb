Rails.application.routes.draw do
  root "home#top"
  get  "home/about"=>"home#about"

  get 'posts/index'
  post"posts/create"=>"posts#create"
  get "posts/:id"=>"posts#edit"
  post "posts/:id/destroy"=>"posts#destroy"
  get "posts/search"=>"posts#search"

 
  get "users/signup"=>"users#signup"
  get "users/signin"
  post "users/create"=>"users#create"
  post "signin"=>"users#signin"
  get"users/logout"=>"users#logout"
  post "users/:id/update"=>"users#update"
  get "users/:id/edit"=>"users#edit"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
