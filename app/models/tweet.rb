class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :hashtags, :through => :tweethashes
  attr_accessible :text



  def get_user_tweets
    user = User.first
    client = TwitterOAuth::Client.new(
        :consumer_key => "6KmZfBk2kSeqA8lgrcQhA",
        :consumer_secret => "aWdvrK39iyt6ZImJjT4ViiqT03ejPs5uvl15SdBRqCs",
        :token => user.auth_token,
        :secret => user.auth_secret
    )
    return client
  end

end
