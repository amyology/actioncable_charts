class MessagesController < ApplicationController

  def index
    @messages = [Message.all.length]
    render json: @messages
  end

  def create
    Message.create(content: params[:message])
    # ActionCable.server.broadcast 'room_channel', message: @messages.to_json
  end

end
