class Reading < ApplicationRecord
    has_many :card_readings
    has_many :cards, through: :card_readings

    
   

    def current_situation   
        Card.find_by_id(cards_in_position[0]) 
    end

    def tasks_at_hand
        Card.find_by_id(cards_in_position[1]) 
    end

    def new_challenges
        Card.find_by_id(cards_in_position[2]) 
    end

    def strength
        Card.find_by_id(cards_in_position[3]) 
    end

    def ideal_outcome
        Card.find_by_id(cards_in_position[4]) 
    end
end
