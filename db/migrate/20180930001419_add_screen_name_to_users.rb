class AddScreenNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :gratitudes, :screen_name, :string
  end
end
