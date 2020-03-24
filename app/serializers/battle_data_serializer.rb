class BattleDataSerializer
  include FastJsonapi::ObjectSerializer
  attributes :userSolution, :opponentSolution, :battle_id
  belongs_to :battle
end
