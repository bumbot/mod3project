class BattleDataSerializer
  include FastJsonapi::ObjectSerializer
  attributes :winnerSolution, :loserSolution, :battle_id
  belongs_to :battle
end
