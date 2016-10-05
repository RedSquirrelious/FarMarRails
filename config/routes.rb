Rails.application.routes.draw do
  get 'vendors/index' => 'vendors#index'

  get 'vendors/show_vendor' => 'vendors#show'

  get 'vendors/new_product' => 'vendors#new', as: 'new'

  get 'vendors/create_product' => 'vendors#create'

  post 'vendors/create_product' => 'vendors#create', as: 'create'

  get 'vendors/show_product' => 'vendors#show_product', as: 'show_product'

  get 'vendors/show_all_products' => 'vendors#show_all_products', as: 'show_all_products'

  get 'vendors/:id/update_product' => 'vendors#update_product'

  get 'vendors/:id/edit_product' => 'vendors#edit_product'

  patch 'vendors/:id/edit_product' => 'vendors#edit_product', as: 'edit_product'

  delete 'vendors/destroy_product' => 'vendors#destroy_product', as: 'destroy_product'

  get 'vendors/new_sale' => 'vendors#new_sale'

  get 'vendors/create_sale' => 'vendors#create_sale'

  post 'vendors/create_sale' => 'vendors#create_sale'

  get 'vendors/show_sale' => 'vendors#show_sale'

  get 'vendors/show_all_sales' => 'vendors#show_all_sales'

  get 'vendors/total_sales' => 'vendors#total_sales'

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
