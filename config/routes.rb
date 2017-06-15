Rails.application.routes.draw do

  get 'sound/send_message'
  root 'sound#show'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
