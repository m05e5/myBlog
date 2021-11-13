Rails.application.routes.draw do
  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show] 
  end
  get '/new_post', to: 'posts#create_post'
  post '/create', to: 'posts#create'
  post '/users/:user_id/posts/:post_id/create', to: 'comments#create'
  post '/like/create', to: 'likes#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
