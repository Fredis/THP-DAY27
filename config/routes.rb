Rails.application.routes.draw do

	resources 'gossip', only: [:new, :create, :show, :index, :edit, :update, :destroy]
  post 'gossip/new', to: 'gossip#create'

  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
