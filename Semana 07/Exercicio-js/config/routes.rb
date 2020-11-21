Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#homepage"
  resources :songs
  resources :albums
  get 'calendario', to: 'application#calendario_js'
  get 'graficos', to: 'application#graficos_js'
end
