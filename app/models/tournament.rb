class Tournament < ApplicationRecord
  belongs_to :winner, class_name: 'User'

  has_many :tournament_users
  has_many :users, through: :tournament_users
end
