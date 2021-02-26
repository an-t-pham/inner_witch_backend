class Card < ApplicationRecord
    has_many :card_readings
    has_many :readings, through: :card_readings
end
