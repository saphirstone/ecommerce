class AddUserIdToKittens < ActiveRecord::Migration[5.2]
  def change
    add_column :kittens, :user_id, :integer
  end
end
