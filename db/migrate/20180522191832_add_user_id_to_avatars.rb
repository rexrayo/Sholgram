class AddUserIdToAvatars < ActiveRecord::Migration[5.1]
  def change
    add_reference :avatars, :user, foreign_key: true
  end
end
