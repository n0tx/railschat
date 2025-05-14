class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  after_create_commit do
    broadcast_append_to(
      room,
      target: "messages",
      partial: "messages/message",
      locals: { message: self }
    )
  end
end
