class DecksController < ApplicationController

    def index 
        decks = Deck.all 
        render json: decks
    end

    def show 
        deck = Deck.find_by(id: params[:id])
        render json: deck 
    end

    def create
       deck = Deck.create(title: params[:title], subject: params[:subject], user_id: params[:user_id])
       render json: deck
    end

    def destroy
        deck = Deck.find_by(id: params[:id])
        deck.destroy
        render json: deck
    end
end
