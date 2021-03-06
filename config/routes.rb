Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show]
  resources :projects

  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'

  get '/validate', to: 'users#validate'
  get '/inventory', to: 'users#inventory'


end
