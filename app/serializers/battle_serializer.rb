class BattleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :opponent_id, :win, :question_id
  
  belongs_to :user
  belongs_to :opponent, class_name: "User"
  belongs_to :question
end
