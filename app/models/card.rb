class Card < ApplicationRecord
    has_many :card_readings, dependent: :destroy
    has_many :readings, through: :card_readings

    def self.random_all
        self.all.map {|c| c.id}.shuffle
    end

    def self.random
        self.all.shuffle.first
    end
end
