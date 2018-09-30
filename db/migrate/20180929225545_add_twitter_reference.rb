class AddTwitterReference < ActiveRecord::Migration[5.2]
  def change
    add_column :gratitudes, :twitter_reference, :string
  end
end
