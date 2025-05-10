class User < ApplicationRecord
  has_many :messages, dependent: :nullify
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
