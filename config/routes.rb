Rails.application.routes.draw do




  get 'users/new'

  #resources :posts, only: [:index, :show, :destroy, :new]
  root 'posts#index'

  get 'posts/show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'contact' => 'static_pages#contact'
  get 'new' => 'posts#new'
  resources :posts




end
