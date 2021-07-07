Rails.application.routes.draw do
  # users
  get 'users' => 'users#index'
  post 'users/create' => 'users#create'
  # posts
  get 'posts' => 'posts#index'
  post 'post/create' => 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
