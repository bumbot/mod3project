class RoomsController < ApplicationController
    def create
        room = Room.new(player_1: params[:player_1], player_2: params[:player_2], room_number: params[:room_number], state: params[:state])

        if room
            room.save
        end
    end

    def update
        room = Room.find(params[:id])

        if room
            room.update!(player_1: params[:player_1], player_2: params[:player_2], room_number: params[:room_number], state: params[:state])
        end
    end

    def show
        room = Room.find(params[:id])

        render json: RoomSerializer.new(room)
    end

    def index
        rooms = Room.all

        render json: RoomSerializer.new(rooms)
    end
end
