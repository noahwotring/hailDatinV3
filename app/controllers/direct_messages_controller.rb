class DirectMessagesController < ApplicationController
  def index
    @direct_messages = Direct_Message.all
  end

  def new
    @direct_message = Direct_Message.new
  end

  def create
    new_direct_message = current_user.direct_messages.new(direct_message_params)
    new_direct_message.save
    redirect_to direct_message_path new_direct_message
  end

  def show
    @direct_message = Direct_Message.find(params[:id])
  end

  def destroy
    Direct_Message.find(params[:id]).destroy
    redirect_to direct_messages_path
  end
end
