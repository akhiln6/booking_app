Rails.application.routes.draw do
  devise_for :users
  #get 'physicians/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'physicians#index'
  resources :physicians 
  resources :appointments
  get '/physicians/:id/appointments/showing', to: 'appointments#showing', as:'showing'  
end
