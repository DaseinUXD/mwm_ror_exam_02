# == Route Map
#
#                    Prefix Verb URI Pattern                                                                              Controller#Action
#               users_index GET  /users/index(.:format)                                                                   users#index
#                 users_new GET  /users/new(.:format)                                                                     users#new
#              users_create POST /users/create(.:format)                                                                  users#create
#                users_show GET  /users/show(.:format)                                                                    users#show
#                users_edit GET  /users/edit(.:format)                                                                    users#edit
#              users_update GET  /users/update(.:format)                                                                  users#update
#             users_destroy GET  /users/destroy(.:format)                                                                 users#destroy
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  get 'collection_items/index'
  get 'collection_items/new'
  post 'collection_items/create'
  get 'collection_items/show'
  get 'collection_items/edit'
  get 'collection_items/update'
  get 'collection_items/destroy'
  get 'users/index'
  get 'users/new'
  post 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
