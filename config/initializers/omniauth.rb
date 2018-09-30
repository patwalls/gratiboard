Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_API'], ENV['TWITTER_SECRET']
end
