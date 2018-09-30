desc "This task is called by the Heroku scheduler add-on"

namespace :scheduler do
  task :find_tweets => :environment do
    puts "Finding tweets..."
    TwitterBot.new.get_mentions
    puts "done."
  end
end
