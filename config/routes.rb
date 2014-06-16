Webmusic::Application.routes.draw do
  get "song/index"
  get "song/new"
  get "song/create"
  get "genres/index"
  get "genres/browse"
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
  	#resources :artists
	
	get 'artists/details' => 'artists#details'
	get 'artists' => 'artists#index'
	post 'artists/new' => 'artists#new'
	post 'artists/create' => 'artists#create'
	get 'artists/new' => 'artists#new'
	get 'artists/addsong' => 'artists#addsong'
	post 'artists/addsong' => 'artists#addsong'
	get 'artists/create' => 'artists#create'
	get 'genres/browse' => 'genres#browse'
	get 'genres' => 'genres#index'

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
