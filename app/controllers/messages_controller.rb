class MessagesController < ApplicationController
  def index
    @message = Message.order(Arel.sql('RANDOM()')).first.text
    render json: {
      text: @message
    }
  end
end
