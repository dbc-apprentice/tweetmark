class UsersController < ApplicationController
  def show
    @tweets = Tweet.get_user_tweets
  end
end
