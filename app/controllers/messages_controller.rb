class MessagesController < ApplicationController
  before_action :require_login

  def create
    @message = Message.new(message_params.merge(user: current_user))
    @message.save!
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @room, status: :see_other }
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :room_id)
  end
end
