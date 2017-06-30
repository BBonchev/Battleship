Rails.application.routes.draw do

  root  'welcome#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/loginn', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'board', to: 'boards#new'
  get 'ship', to: 'ships#new'
  resources :games, :only => [:index, :create, :show]
  resources :users do
    member do
    get :wins, :flosses
    end
  end
end