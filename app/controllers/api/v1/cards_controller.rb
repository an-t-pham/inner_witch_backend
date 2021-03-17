class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.all
        render json: CardSerializer.new(cards)
    end

    def random_card
        card = Card.random
        render json: CardSerializer.new(card)
    end

    def random_cards
        cards = Card.random_all
        render json: { card_ids:cards }
    end

    private
    
    def card_params
    params.require(:card).permit(:name, :card_type, :meaning_up, :meaning_rev, :description, :image)
    end

end
