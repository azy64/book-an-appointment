Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  
  resources :addresses, only: [:create, :show]
  resources :doctors, only: [:show, :update, :index, :create, :destroy]
  resources :users do
    resources :reservations, only: [:create, :show, :index, :destroy, :update]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
