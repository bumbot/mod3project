class Room < ApplicationRecord
    belongs_to :player1, class_name: "User" 
    belongs_to :player2, class_name: "User"

    has_many :battles
end
