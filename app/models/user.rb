class User < ApplicationRecord
    has_many :battles
    has_many :opponents, through: :battles
    has_many :battle_data, through: :battles
end
