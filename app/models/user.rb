class User < ActiveRecord::Base
  attr_accessible :auth_secret, :auth_token, :name, :provider, :twitter_name, :uid, :image_url

  has_many :tweets
  hes_many :hashtags, :through => :tweets

  def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.twitter_name = auth["info"]["nickname"]
        user.image_url = auth["info"]["image"]
        user.auth_token = auth["credentials"]["token"]
        user.auth_secret = auth["credentials"]["secret"]
      end
  end
end
