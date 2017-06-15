Rails.application.routes.draw do
  get 'rooms/show'

  get 'sound/index'
  get 'rooms/send_message'
  root 'rooms#show'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
