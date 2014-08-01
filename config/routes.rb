Rails.application.routes.draw do
  # Routes for the Attendee_venue resource:
  # CREATE
  get '/new_attendee_venue' => 'attendee_venues#new'
  get '/create_attendee_venue' => 'attendee_venues#create'

  # READ
  get '/attendee_venues' => 'attendee_venues#index'
  get '/attendee_venues/:id' => 'attendee_venues#show'

  # UPDATE
  get '/attendee_venues/:id/edit' => 'attendee_venues#edit'
  get '/attendee_venues/:id/update' => 'attendee_venues#update'

  # DELETE
  get '/attendee_venues/:id/destroy' => 'attendee_venues#destroy'
  #------------------------------

  # Routes for the Band_venue resource:
  # CREATE
  get '/new_band_venue' => 'band_venues#new'
  get '/create_band_venue' => 'band_venues#create'

  # READ
  get '/band_venues' => 'band_venues#index'
  get '/band_venues/:id' => 'band_venues#show'

  # UPDATE
  get '/band_venues/:id/edit' => 'band_venues#edit'
  get '/band_venues/:id/update' => 'band_venues#update'

  # DELETE
  get '/band_venues/:id/destroy' => 'band_venues#destroy'
  #------------------------------

  # Routes for the Attendee_to_venue resource:
  # CREATE
  get '/new_attendee_to_venue' => 'attendee_to_venues#new'
  get '/create_attendee_to_venue' => 'attendee_to_venues#create'

  # READ
  get '/attendee_to_venues' => 'attendee_to_venues#index'
  get '/attendee_to_venues/:id' => 'attendee_to_venues#show'

  # UPDATE
  get '/attendee_to_venues/:id/edit' => 'attendee_to_venues#edit'
  get '/attendee_to_venues/:id/update' => 'attendee_to_venues#update'

  # DELETE
  get '/attendee_to_venues/:id/destroy' => 'attendee_to_venues#destroy'
  #------------------------------

  # Routes for the Band_to_venue resource:
  # CREATE
  get '/new_band_to_venue' => 'band_to_venues#new'
  get '/create_band_to_venue' => 'band_to_venues#create'

  # READ
  get '/band_to_venues' => 'band_to_venues#index'
  get '/band_to_venues/:id' => 'band_to_venues#show'

  # UPDATE
  get '/band_to_venues/:id/edit' => 'band_to_venues#edit'
  get '/band_to_venues/:id/update' => 'band_to_venues#update'

  # DELETE
  get '/band_to_venues/:id/destroy' => 'band_to_venues#destroy'
  #------------------------------

  # Routes for the Member resource:
  # CREATE
  get '/new_member' => 'members#new'
  get '/create_member' => 'members#create'

  # READ
  get '/members' => 'members#index'
  get '/members/:id' => 'members#show'

  # UPDATE
  get '/members/:id/edit' => 'members#edit'
  get '/members/:id/update' => 'members#update'

  # DELETE
  get '/members/:id/destroy' => 'members#destroy'
  #------------------------------

  # Routes for the Attendee resource:
  # CREATE
  get '/new_attendee' => 'attendees#new'
  get '/create_attendee' => 'attendees#create'

  # READ
  get '/attendees' => 'attendees#index'
  get '/attendees/:id' => 'attendees#show'

  # UPDATE
  get '/attendees/:id/edit' => 'attendees#edit'
  get '/attendees/:id/update' => 'attendees#update'

  # DELETE
  get '/attendees/:id/destroy' => 'attendees#destroy'
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get '/new_venue' => 'venues#new'
  get '/create_venue' => 'venues#create'

  # READ
  get '/venues' => 'venues#index'
  get '/venues/:id' => 'venues#show'

  # UPDATE
  get '/venues/:id/edit' => 'venues#edit'
  get '/venues/:id/update' => 'venues#update'

  # DELETE
  get '/venues/:id/destroy' => 'venues#destroy'
  #------------------------------

  # Routes for the Band resource:
  # CREATE
  get '/new_band' => 'bands#new'
  get '/create_band' => 'bands#create'

  # READ
  get '/bands' => 'bands#index'
  get '/bands/:id' => 'bands#show'

  # UPDATE
  get '/bands/:id/edit' => 'bands#edit'
  get '/bands/:id/update' => 'bands#update'
  get '/bands/:id/add_venue' => 'bands#add_venue'

  # DELETE
  get '/bands/:id/destroy' => 'bands#destroy'
  #------------------------------

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
