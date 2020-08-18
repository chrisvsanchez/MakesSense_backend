Rails.application.routes.draw do
  # resources :cards
  # resources :decks
  # resources :users

  #VERB, "/url". to: "CONTROLLER_NAME#METHOD_NAME"

#CARD ROUTES ======================================================================================================
patch "/cards/:id", to: "cards#update"

#DECK ROUTES ======================================================================================================
get "/decks", to: "decks#index" 
get "/decks/:id", to: "decks#show"
post "/decks", to:"decks#create"

#USER ROUTES=======================================================================================================
post '/users/login', to: "users#login"
get '/users', to: "users#index"
get '/users/:id', to: "users#show"





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
