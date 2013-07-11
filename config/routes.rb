Site2::Application.routes.draw do
  get "welcome/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'
  match '/contact' => "welcome#contact", as: :contact_us
  match '/about' => "welcome#about", as: :about_us
  match '/our_technology' => "welcome#our_technology", as: :our_technology
  match '/terms-of-use' => "welcome#terms_of_use", as: :terms_of_use
  match '/policy' => "welcome#policy", as: :policy
  match '/clients-and-cases' => "welcome#clients", as: :clients
  match '/commercial' => "welcome#commercial", as: :commercial
  match '/construction' => "welcome#construction", as: :construction
  match '/environmental' => "welcome#environmental", as: :environmental
  match '/estate' => "welcome#estate", as: :estate
  match '/tax' => "welcome#tax", as: :tax
  match '/professional' => "welcome#professional", as: :professional
  match '/employment' => "welcome#employment", as: :employment
  match '/areas_of_practice' => "welcome#areas_of_practice", as: :areas_of_practice

  match '/commercial_cooperate' => "welcome#commercial_second", as: :commercial_second
  match '/construction_cooperate' => "welcome#construction_second", as: :construction_second
  match '/environmental_cooperate' => "welcome#environmental_second", as: :environmental_second
  match '/estate_cooperate' => "welcome#estate_second", as: :estate_second
  match '/tax_cooperate' => "welcome#tax_second", as: :tax_second
  match '/professional_cooperate' => "welcome#professional_second", as: :professional_second
  match '/employment_second' => "welcome#employment_second", as: :employment_second
  match '/areas_of_practice' => "welcome#areas_of_practice", as: :areas_of_practice
  match '/banking' => "welcome#banking", as: :banking
  resources :messages


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
