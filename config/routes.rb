Rails.application.routes.draw do
  devise_for :clients, controllers: { sessions: 'clients/sessions' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  resources :services
  resources :products

  get '/clients/:id', :to => 'clients#show', :as => :client, via: :get
  get '/clients/:id/my_orders', :to => 'clients#my_orders', as: :my_orders, via: :get

  get '/admins/:id', :to => 'admins#show', :as => :admin, via: :get
  get '/admins/:id/show_clients', :to => 'admins#show_clients', as: :show_clients, via: :get
  get '/admins/:id/show_products', :to => 'admins#show_products', as: :show_products, via: :get
  get '/admins/:id/show_services', :to => 'admins#show_services', as: :show_services, via: :get

  root 'pages#start'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
