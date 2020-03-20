class BattleChannel < ApplicationCable::BattleChannel
    def subscribed
        @battle = Battle.find_by(id: params[:id])
    end

    def received
        BattleChannel.broadcast_to(@battle, {battle: @battle, user: @battle.user, opponent: @battle.opponent, question: @battle.question})
    end

end