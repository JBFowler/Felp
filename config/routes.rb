Rails.application.routes.draw do
  root to: 'reviews#index'

  get 'ui(/:action)', controller: 'ui'

  resources :businesses

end
