class BattleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :opponent_id, :win, :question_id, :room_id, :user_time
  
  belongs_to :user
  belongs_to :opponent, class_name: "User"
  belongs_to :question
  belongs_to :room
  has_many :battle_data
end
