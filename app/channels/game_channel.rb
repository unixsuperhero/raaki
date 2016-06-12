class GameChannel < ApplicationCable::Channel
  def subscribe
    stream_from 'matches'
  end
end
