Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about',to: 'pages#about'
  get 'volunteer',to: 'pages#volunteer'
  resources :contacts, only: :create
  resources :volunteers
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
