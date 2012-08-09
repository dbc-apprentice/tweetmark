class UsersController < ApplicationController
  def show
    @tweets = Tweet.get_user_tweets
  end

  def new
    @user = User.new
  end

  def create
  end
end
