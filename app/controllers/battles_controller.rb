class BattlesController < ApplicationController
    def index
        battles = Battle.all
        options = {
            include: [:question]
        }
        render json: BattleSerializer.new(battles, options)
    end

    def show
        battle = Battle.find(params[:id])

        render json: BattleSerializer.new(battle)
    end
end
