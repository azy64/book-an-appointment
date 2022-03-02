Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }
  get '/member-data', to: 'members#show'

  resources :reservations
  resources :addresses
  resources :doctors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
