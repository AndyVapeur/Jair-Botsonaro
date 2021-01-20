require 'dotenv'
Dotenv.load('.env')
require 'twitter'

def login_twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
  client.update("L'expression 'pain au chocolat' est sémantiquement fausse, puisqu'il ne s'agit pas littéralement de pain et de chocolat. ie il faut donc dire chocolatine")
end