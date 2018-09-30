class AddBackAccountsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name

      t.timestamps
    end

    rename_column :gratitudes, :user_id, :account_id
  end
end
