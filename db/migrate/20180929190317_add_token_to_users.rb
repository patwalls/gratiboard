class AddTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email_token, :string
  end
end
