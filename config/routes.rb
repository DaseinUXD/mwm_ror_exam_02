# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     items GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                  new_item GET    /items/new(.:format)                                                                     items#new
#                 edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                      item GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                  sessions GET    /sessions(.:format)                                                                      sessions#index
#                           POST   /sessions(.:format)                                                                      sessions#create
#               new_session GET    /sessions/new(.:format)                                                                  sessions#new
#              edit_session GET    /sessions/:id/edit(.:format)                                                             sessions#edit
#                   session GET    /sessions/:id(.:format)                                                                  sessions#show
#                           PATCH  /sessions/:id(.:format)                                                                  sessions#update
#                           PUT    /sessions/:id(.:format)                                                                  sessions#update
#                           DELETE /sessions/:id(.:format)                                                                  sessions#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # CUSTOM ROUTES FOR REGISTERING USER #
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  # RESOURCE ROUTES CONTROLLERS #
  resources :items
  resources :users
  resources :sessions

# SESSIONS ROUTES
#   get 'sessions/index'
#   get 'sessions/new'
#   post 'sessions/create'
#   get 'sessions/show'
#   get 'sessions/edit'
#   patch 'sessions/update'
#   delete 'sessions/destroy'
# ITEMS ROUTES
#   get 'items/index'
#   get 'items/new'
#   post 'items/create'
#   get 'items/show'
#   get 'items/edit'
#   patch 'items/update'
#   delete 'items/destroy'
# USERS ROUTES
#   get 'users/index'
#   get 'users/new'
#   post 'users/create'
#   get 'users/show'
#   get 'users/edit'
#   patch 'users/update'
#   delete 'users/destroy'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
