class User < ApplicationRecord
  has_many :match_users
  has_many :matches, through: :match_users

  has_many :tournament_users
  has_many :tournaments, through: :tournament_users
end
