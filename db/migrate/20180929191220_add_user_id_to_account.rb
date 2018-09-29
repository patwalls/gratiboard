class AddUserIdToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :user_id, :integer
  end
end
