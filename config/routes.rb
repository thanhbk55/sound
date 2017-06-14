Rails.application.routes.draw do
  get 'sound/index'
  root 'sound#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
