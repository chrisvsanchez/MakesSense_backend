Rails.application.routes.draw do
  # resources :cards
  # resources :decks

  # Kelsey updating for sessions below, WAITING TO TALK TO CHRIS.
  #  resources :users, only: [:create]

  #VERB, "/url". to: "CONTROLLER_NAME#METHOD_NAME"
# Sessions & Cookies
get "/temp", to: "application#temp"

#CARD ROUTES ======================================================================================================
patch "/cards/:id", to: "cards#update"
get "cards/:id", to: "cards#show"
delete "cards/:id", to: "cards#destroy"
post "cards/", to: "cards#create"
get "cards/", to: "cards#index"



#DECK ROUTES ======================================================================================================
get "/decks", to: "decks#index" 
get "/decks/:id", to: "decks#show"
post "/decks", to: "decks#create"
delete "/decks/:id", to: "decks#destroy"



#USER ROUTES=======================================================================================================
post '/users/login', to: "users#login"
get '/users', to: "users#index"
get '/users/:id', to: "users#show"








  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
