class RemoveAccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table :accounts
    rename_column :gratitudes, :account_id, :user_id
  end
end
