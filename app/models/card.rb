class Card < ApplicationRecord
    has_many :card_readings, dependent: :destroy
    has_many :readings, through: :card_readings
end
