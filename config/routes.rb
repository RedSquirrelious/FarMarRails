Rails.application.routes.draw do
  root 'markets#index'
  get 'markets/index' => 'markets#index', as: 'index'

  get 'markets/show/:id' => 'markets#show', as: 'show'

  get 'markets/new' => 'markets#new', as: 'new'

  post 'markets/create' => 'markets#create', as: 'create'

  get 'markets/:id/edit' => 'markets#edit', as: 'edit'

  put 'markets/:id/update' => 'markets#update', as: 'update'

  get 'markets/:id/destroy' => 'markets#destroy', as: 'destroy'

  get 'markets/:id/vendor_index' => 'markets#vendor_index', as: 'vendorindex'

  get 'markets/:id/vendor_show' => 'markets#vendor_show', as: 'vendorshow'

  get 'markets/:id/vendor_new'  => 'markets#vendor_new', as: 'vendornew'

  post 'markets/:id/vendor_create' => 'markets#vendor_update', as: 'vendorupdate'

  get 'markets/:id/vendor_edit' => 'markets#vendor_edit', as: 'vendoredit'

  put 'markets/:id/vendor_update' => 'markets#vendor_update', as: 'vendorupdate'

  get 'markets/:id/vendor_destroy' => 'markets#vendor_destroy', as: 'vendordestroy'

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
