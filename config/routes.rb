Rails.application.routes.draw do

  get ':id', to: 'clients#show'
  root to: 'pages#home'
end
