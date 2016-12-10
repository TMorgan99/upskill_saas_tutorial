Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'about', to: 'pages#about'
  resources :contacts, only: [ :create ]
  get 'contact-us', to: 'contacts#new'
  
  resources :users do
    resource :profile      # has_1
  end
  
end
