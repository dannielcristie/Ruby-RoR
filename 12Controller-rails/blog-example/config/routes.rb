Rails.application.routes.draw do
  #mudando o end point da rota
  get 'site', to: 'site#index'
  #mudando o end point para o barra(root)
  root to: 'site#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
