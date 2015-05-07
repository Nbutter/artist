Rails.application.routes.draw do
  # Default all views except /admin to JSON 
  #resources :users, defaults: { format: :json }
  resources :exhibitions, defaults: { format: :json }
  resources :venues, defaults: { format: :json }
  resources :artworks, defaults: { format: :json }

  #show login form
  get 'sessions/new' => 'sessions#new'
  
  #log in a user
  post 'sessions' => 'sessions#create'
  
  #log out a user
  delete 'sessions' => 'sessions#destroy'

  # Admin views rendered with ERB as HTML
  namespace :admin, defaults: {format: :html} do
    #resources :users 
    resources :exhibitions
    resources :venues
    resources :artworks
    resources :artwork_images
  end

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
