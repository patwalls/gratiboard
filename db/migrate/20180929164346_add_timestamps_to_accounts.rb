class AddTimestampsToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :created_at, :datetime, null: false
    add_column :accounts, :updated_at, :datetime, null: false
  end
end
