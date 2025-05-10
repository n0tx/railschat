class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  broadcasts_to ->(room) { room }
end
