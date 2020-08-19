class CardsController < ApplicationController

    def index
        cards = Card.all 
        render json: cards
    end

    def update
        card = Card.find_by(id: params[:id])
        # # if (){

        # }
        card.update(answer: params[:answer])

        render json: {card: CardSerializer.new(card), message: "candy" }
    end
    def show
        card = Card.find_by(id: params[:id])
        render json: card
    end
    def destroy
        card = Card.find_by(id: params[:id])
        card.destroy
        render json: card
    end

    def create
        card = Card.create( question: params[:question], instruction: params[:instruction], answer: params[:answer], deck_id: params[:deck_id])
       
        render json: card
    end
end
