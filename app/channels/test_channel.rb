class TestChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'test_channel'
  end

  def unsubscribed
  end

  def echo(data)
    ActionCable.server.broadcast 'test_channel', message: data['message']
  end
end
