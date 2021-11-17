Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :create, :destroy] do
      resources :comments, only: [:create, :destroy]
    end
  end
  get '/create_post', to: 'posts#create_post'
  post '/like/create', to: 'likes#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
