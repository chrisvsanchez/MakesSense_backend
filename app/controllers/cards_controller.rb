class CardsController < ApplicationController

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
end
