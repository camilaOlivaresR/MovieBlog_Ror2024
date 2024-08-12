Rails.application.routes.draw do
  get 'documentaryfilms/index'
  get 'documentaryfilms/create'
  get 'documentaryfilms/new'
  get 'series/index'
  get 'series/create'
  get 'series/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "movies#index"
   post "movies" => "movies#create"
   post "series" => "series#create"
   post "documentaryfilms" => "documentaryfilms#create"
end
