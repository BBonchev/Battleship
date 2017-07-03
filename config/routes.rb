Rails.application.routes.draw do

  root                    'welcome#home'
  get     '/signup', to:  'users#new'
  get     '/login',  to:  'sessions#new'
  get     'games',    to: 'games#create'
  get     'ship',    to:  'ships#new'
  post    '/signup', to:  'users#create'
  post    '/login',  to:  'sessions#create'
  delete  '/logout', to:  'sessions#destroy'
  resources :games, only: [:create]
  resources :users do
    member do
    get :wins, :losses
    end
  end
end