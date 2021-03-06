Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/dashboard', to: 'dashboard#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :missions
  resources :bookings, only: [:index, :show, :create]
   resources :users, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
end

