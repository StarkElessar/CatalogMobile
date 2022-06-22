Rails.application.routes.draw do
  root 'pages#index'
  get '/products', to: 'products#index'
end
