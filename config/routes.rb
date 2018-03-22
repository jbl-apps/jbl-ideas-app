Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  
  #think of it as path first and then controller#method (JBL)
  get 'public/index', to: 'public#index'
  get 'public/scss', to: 'public#scss'
  
  get 'member/index', to: 'member#index'

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
  namespace :public do
    
    get 'designs/vesco', to: 'designs#vesco'
    
    namespace :designs do
      get 'photo_sharing_app/index', to: 'photo_sharing_app#index'
      get 'photo_sharing_app/about', to: 'photo_sharing_app#about'
      get 'photo_sharing_app/contact', to: 'photo_sharing_app#contact'
    end
  end
  
end
