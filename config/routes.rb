Rails.application.routes.draw do
<<<<<<< HEAD


  # get 'ships/new'

  root  'welcome#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/loginn', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete'/logout', to: 'sessions#destroy'
  resources :users do
   member do
      get :wins, :flosses
    end
  end
<<<<<<< HEAD
 get 'board', to: 'boards#new'
 get '/ship', to: 'ships#new'
=======
=======
>>>>>>> 15a881f8cf719cd9ff12e683ac8c362fb31f5da9
>>>>>>> 2a66ea581b172604b11a567c0a0974915a44444d
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
<<<<<<< HEAD

  
  # get 'board', to: 'boards#new'

=======
  root 'welcome#home'
>>>>>>> 2a66ea581b172604b11a567c0a0974915a44444d

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
