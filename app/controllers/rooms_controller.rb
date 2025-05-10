class RoomsController < ApplicationController
  before_action :require_login

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create!(room_params)
    redirect_to @room
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
    @message = Message.new
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
end
