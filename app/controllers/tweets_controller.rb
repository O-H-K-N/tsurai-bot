class TweetsController < ApplicationController
  before_action :twitter_client, only: %i[create post]

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(create_params)
    if @tweet.save
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def post
    tweet = Tweet.first
    @client.update(tweet.text)
    redirect_to :root
  end

  private

  def create_params
    params.require(:tweet).permit(:text)
  end

  def twitter_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key =  ENV["CONSUMER_KEY"]
      config.consumer_secret =  ENV["CONSUMER_SECRET_KEY"]
      config.access_token =  ENV["ACCESS_TOKEN"]
      config.access_token_secret =  ENV["ACCESS_TOKEN_SECRET"]
    end
  end
end