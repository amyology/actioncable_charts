class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform
    # @messages = Message.all.length
    # ActionCable.server.broadcast 'room_channel', @messages.to_json
    ActionCable.server.broadcast 'room_channel', {}
  end

  # private 

  # def render_message(message) 
  #   ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
  # end

end
