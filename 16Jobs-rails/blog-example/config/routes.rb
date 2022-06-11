Rails.application.routes.draw do
  resources :authors
  #mudando o end point da rota
  get 'site', to: 'site#index'
  #mudando o end point para o barra(root)
  root to: 'site#index'
  #Crianção de rotas de um CRUD, para acessar use .../rails/info/routes
  #resources :users

  #get '/posts',to:'posts#index'
  resources :posts

end
j