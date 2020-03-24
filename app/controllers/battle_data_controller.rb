class BattleDataController < ApplicationController
    def index
        data = BattleDatum.all

        render json: BattleDataSerializer.new(data)
    end

    def show
        data = BattleDatum.find(params[:id])

        render json: BattleDataSerializer.new(data)
    end

    def create
        data = BattleDatum.new(userSolution: params[:userSolution], opponentSolution: params[:opponentSolution], battle_id: params[:battle_id])

        if data
            data.save
        end
    end

    def update
        data = BattleDatum.find(params[:id])

        if data
            data.update!(userSolution: params[:userSolution], opponentSolution: params[:opponentSolution], battle_id: params[:battle_id])
        end
    end
end
