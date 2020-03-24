class Battle < ApplicationRecord
    belongs_to :user
    has_many :battle_data

    belongs_to :opponent, class_name: "User"
    belongs_to :question
    belongs_to :room
end
