class UsersController < ApplicationController
  def show
    @tweets = Tweet.get_user_tweets.inspect
  end
end
