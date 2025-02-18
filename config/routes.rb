Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'application#welcome'

  # Hotel
  get '/hotels', to: 'hotels#index', as: 'hotels'
  get '/hotels/:id', to: 'hotels#show', as: 'hotel'
  get '/hotels/:id/edit', to: 'hotels#edit', as: 'edit_hotel'
  patch '/hotels/update', to: 'hotels#update', as: 'update_hotel'
  delete '/hotels/delete', to: 'hotels#destroy', as: 'delete_hotel'

  # Room
  get '/rooms', to: 'rooms#index', as: 'rooms'
  get '/rooms/:id', to: 'rooms#show', as: 'room'
  get '/rooms/:id/edit', to: 'rooms#edit', as: 'edit_room'
  patch '/rooms/update', to: 'rooms#update', as: 'update_room'
  delete '/rooms/delete', to: 'rooms#destroy', as: 'delete_room'

  # Guest
  get '/guests', to: 'guests#index', as: 'guests'
  get '/guests/:id', to: 'guests#show', as: 'guest'
  get '/guests/:id/edit', to: 'guests#edit', as: 'edit_guest'
  patch '/guests/:id', to: 'guests#update', as: 'update_guest'
  post '/guests/:id/add_room', to: 'guests#add_room', as: 'add_room_guest'
  delete '/guests/:id', to: 'guests#destroy', as: 'delete_guest'

  # Stay
  get '/stays', to: 'stays#index', as: 'stays'
  get '/stays/:id', to: 'stays#show', as: 'stay'
end
