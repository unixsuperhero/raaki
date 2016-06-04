class LeaderboardSerializer < ActiveModel::Serializer
  attributes :nickname, :wins

  def nickname
    object.nick
  end

  def wins
    object.wins
  end
end
