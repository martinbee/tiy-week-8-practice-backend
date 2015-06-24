Rails.application.routes.draw do

  post 'users' => 'users#create'
  put 'users' => 'users#update'
  patch 'users' => 'users#update'
  delete 'users' => 'users#destroy'

end
