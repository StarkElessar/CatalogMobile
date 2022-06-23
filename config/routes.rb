Rails.application.routes.draw do
  resources :products, only: %i[index new edit create update destroy]
  # get '/products',          to: 'products#index'
  # get '/products/new',      to: 'products#new'
  # post '/products',         to: 'products#create'
  # get '/products/:id/edit', to: 'products#edit'
  root 'pages#index'
end
