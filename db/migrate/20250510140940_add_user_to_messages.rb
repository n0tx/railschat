class AddUserToMessages < ActiveRecord::Migration[8.0]
  def change
    add_reference :messages, :user, null: true, foreign_key: true
  end
end
