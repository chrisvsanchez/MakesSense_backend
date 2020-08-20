class CardsController < ApplicationController

    def index
        cards = Card.all 
        render json: cards
    end
    
    def update
        words = ["function", "code", "backend", "frontend"]
        card = Card.find_by(id: params[:id])
        card.update(answer: params[:answer])
        # The following does not function 
        # let check_answer = params[:answer].select do |user_input| words.all?{ |word| user_input.include? word }
        # if check_answer
        #     result = " Your explaination was too technical"
        # else 
        #     result = "Great Job!"
        # end
#  The following code functions, only checking for 1 word
        if params[:answer].include?( word = "function")
            result= "Your explaination was too technical, you used the word #{word} "
        else
            result= "Great job!"
        end
        render json: {card: CardSerializer.new(card), message: result}
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
