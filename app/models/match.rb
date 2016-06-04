class Match < ApplicationRecord
  belongs_to :player_one, class_name: 'User'
  belongs_to :player_two, class_name: 'User'
  belongs_to :player_winner, class_name: 'User'

  has_many :match_users
  has_many :users, through: :match_users
end
