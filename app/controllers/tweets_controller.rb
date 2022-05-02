class TweetsController < ApplicationController
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

  private
  def create_params
    params.require(:tweet).permit(:text)
  end
end