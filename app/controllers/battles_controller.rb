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

    def create
        battle = Battle.new(user: params[:user], opponent: params[:opponent], win: nil, question: params[:question], room: params[:room], user_time: params[:user_time])

        if battle
            battle.save
        end
    end

    def update
        battle = Battle.find(params[:id])

        if battle
            battle.update(user: params[:user], opponent: params[:opponent], win: params[:win], question: params[:question], room: params[:room], user_time: params[:user_time])
        end
    end
end
