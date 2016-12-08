Rails.application.routes.draw do
  devise_for :users
  resources :work_orders

  root 'landings#secure'
  get 'secure' => 'landings#secure'




  
#  Prefix Verb   URI Pattern                     Controller#Action
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#            user_password POST   /users/password(.:format)       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#                          PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#        user_registration POST   /users(.:format)                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#                          PATCH  /users(.:format)                devise/registrations#update
#                          PUT    /users(.:format)                devise/registrations#update
#                          DELETE /users(.:format)                devise/registrations#destroy
#              work_orders GET    /work_orders(.:format)          work_orders#index
#                          POST   /work_orders(.:format)          work_orders#create
#           new_work_order GET    /work_orders/new(.:format)      work_orders#new
#          edit_work_order GET    /work_orders/:id/edit(.:format) work_orders#edit
#               work_order GET    /work_orders/:id(.:format)      work_orders#show
#                          PATCH  /work_orders/:id(.:format)      work_orders#update
#                          PUT    /work_orders/:id(.:format)      work_orders#update
#                          DELETE /work_orders/:id(.:format)      work_orders#destroy
#                     root GET    /                               landings#secure
#                   secure GET    /secure(.:format)               landings#secure

end
