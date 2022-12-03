Rails.application.routes.draw do
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show]
  post '/login', to: 'sessions#create'
  get '/me', to: 'sessions#show'
  delete '/logout', to: 'sessions#destroy'
end
