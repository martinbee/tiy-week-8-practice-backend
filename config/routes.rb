Rails.application.routes.draw do

  post 'users' => 'users#create'
  put 'users' => 'users#update'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  post 'auth' => 'session#create', as: :auth

  get 'posts' => 'posts#index'
  post 'posts' => 'posts#create'
  put 'posts' => 'posts#update'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'

end
