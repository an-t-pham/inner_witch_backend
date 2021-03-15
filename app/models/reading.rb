class Reading < ApplicationRecord
    has_many :card_readings, dependent: :destroy
    has_many :cards, through: :card_readings
    
   

    def past 
        Card.find_by_id(cards_in_position[0]) 
    end

    def present
        Card.find_by_id(cards_in_position[1]) 
    end

    def future
        Card.find_by_id(cards_in_position[2]) 
    end

    def reason
        Card.find_by_id(cards_in_position[3]) 
    end

    def potential
        Card.find_by_id(cards_in_position[4]) 
    end
end
