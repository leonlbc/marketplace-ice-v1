Rails.application.routes.draw do
  resources :collections
  resources :clients
  root to: 'pages#home'
end
