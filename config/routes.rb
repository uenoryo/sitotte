Rails.application.routes.draw do

  get '/user', to: 'users#index'

  get '/group/new'
  get '/group/:id', to: 'group#show', :as => :group
  get '/group/:id/invite', to: 'group#invite'
  post '/group/create', to: 'group#create'

  devise_for :user
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
