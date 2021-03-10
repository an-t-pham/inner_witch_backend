class Api::V1::ReadingsController < ApplicationController

    def create
        reading = Reading.new(reading_params)

        if reading.save
            render json: ReadingSerializer.new(reading), status: :accepted
        else
            render json: {errors: reading.errors.full_messages}, status: :unprocessible_entity
        end

    end

    private
    
    def reading_params
    params.require(:reading).permit(:cards_in_position)
    end

end