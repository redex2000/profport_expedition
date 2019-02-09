class ExpeditionsChannel < ApplicationCable::Channel
  TITLE = "ExpeditionsChannel"

  def subscribed
    # stream_from "some_channel"
    stream_from TITLE
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
