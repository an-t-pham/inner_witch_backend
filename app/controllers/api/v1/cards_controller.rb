class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.all
        # render json: cards
        render json: CardSerializer.new(cards)
    end

    def random_card
        card = Card.random

        render json: CardSerializer.new(card)
    end

    private
    
    def card_params
    params.require(:card).permit(:name, :card_type, :meaning_up, :meaning_rev, :description, :image)
    end

end
