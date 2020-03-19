class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :mmr
  has_many :battles
  has_many :opponents, through: :battles
end
