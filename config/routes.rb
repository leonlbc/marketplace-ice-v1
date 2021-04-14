Rails.application.routes.draw do
  root to: 'pages#home'

  get ':id', to: 'clients#show' do
    get ':id', to: 'products#show'
  end

end
