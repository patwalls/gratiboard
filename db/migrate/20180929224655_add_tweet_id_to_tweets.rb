class AddTweetIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :gratitudes, :tweet, :string
  end
end
