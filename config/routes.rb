Rails.application.routes.draw do
  # resources :cards
  # resources :decks
  # resources :users

  #VERB, "/url". to: "CONTROLLER_NAME#METHOD_NAME"

#CARD ROUTES ======================================================================================================



#DECK ROUTES ======================================================================================================
get "/decks", to: "decks#index" 
get "/decks/:id", to: "decks#show"

#USER ROUTES=======================================================================================================





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
