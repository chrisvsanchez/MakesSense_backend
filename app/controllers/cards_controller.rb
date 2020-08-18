class CardsController < ApplicationController

    def update
        card = Card.find_by(id: params[:id])
        # # if (){

        # }
        card.update(answer: params[:answer])

        render json: {card: CardSerializer.new(card), message: "candy" }
    end
end
