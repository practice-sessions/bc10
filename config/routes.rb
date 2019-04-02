Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: {registrations: 'users/registrations'}

    resources :users do
      resource :profile
    end
  get 'about',to: 'pages#about'
  get 'volunteer',to: 'pages#volunteer'
  resources :contacts, only: :create
  resources :volunteers
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
