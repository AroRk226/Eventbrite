Rails.application.routes.draw do

  get 'events/index'
	root 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/secret'
   get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  devise_for :users

  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
