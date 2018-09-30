class TwitterBot
  attr_reader :client

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_BOT_API_KEY']
      config.consumer_secret     = ENV['TWITTER_BOT_API_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end

  def get_mentions
    client.mentions_timeline(since_id: Gratitude.maximum(:twitter_reference) || 1).map do |tweet|
      potential_usernames = tweet.text.split(" ").select { |un| un.include?("@") }.map{ |username| username.gsub("@", "") } - ["gratiboard"]

      potential_usernames.each do |pu|
        account = Account.find_or_create_by(name: pu)

        grat = Gratitude.create(
          twitter_reference: tweet.id,
          body: TwitterBot.new.client.status(tweet.in_reply_to_tweet_id).text,
          tweet: tweet.in_reply_to_tweet_id,
          account: account
        )
      end
    end
  end
end
