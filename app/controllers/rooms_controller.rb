class RoomsController < ApplicationController
    def create
        room = Room.new(player1_id: params[:player1_id], player2_id: params[:player2_id], room_number: params[:room_number], state: params[:state])

        if room
            room.save
        end

        render json: room
    end

    def update
        room = Room.find(params[:id])
        if params[:player2_id] && room
            room.update(player2_id: params[:player2_id], state: params[:state])
        else
            room.update(state: params[:state])
        end

        render json: RoomSerializer.new(room)
    end

    def show
        room = Room.where(room_number: params[:id])
        if room.length > 0
            render json: RoomSerializer.new(room[0])
        else 
            render json: {message: "Room Does Not Exist"}
        end
    end

    def index
        rooms = Room.all

        render json: RoomSerializer.new(rooms)
    end
end
