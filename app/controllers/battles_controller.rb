class BattlesController < ApplicationController
    def index
        battles = Battle.all
        options = {
            include: [:question]
        }
        render json: BattleSerializer.new(battles, options)
    end

    def show
        # byebug
        battle = Battle.where(room_id: params[:id])
        newBattleData = BattleDatum.where(battle_id: battle[0].id)
        # byebug
        render json: battle
    end

    def create
        battle = Battle.create(room_id: params[:room_id], user_id: params[:user_id], opponent_id: params[:opponent_id], question_id: params[:question_id])
        battleData = BattleDatum.create(battle_id: battle.id)
        render json: battleData
        
    end

    def update
        battle = Battle.find(params[:id])

        if battle
            battle.update(user: params[:user], opponent: params[:opponent], win: params[:win], question: params[:question], room: params[:room], user_time: params[:user_time])
        end
    end
end
