desc "This task is called by the Heroku scheduler add-on"

task :find_tweets => :environment do
  puts "Finding tweets..."
  TwitterBot.new.get_mentions
  puts "done."
end
