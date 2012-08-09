class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
    has_many :hashtags, :through => :tweethashes
    attr_accessible :text
  @@consumer_key = "Wko8AqUdjesPW5aK4MTxQ"
  @@consumer_secret = "FkgvnrfuxhItAk5YUhv9ZGUIJVmJT3gkLV6MYX8"

  def self.get_user_tweets
    @user = User.first
    @client = TwitterOAuth::Client.new(
      # :consumer_key => ENV["TWITTER_KEY"],
      #   :consumer_secret => ENV["TWITTER_SECRET"],
      :consumer_key => @@consumer_key,
      :consumer_secret => @@consumer_secret,
      :token => @user.auth_token,
      :secret => @user.auth_secret
      )
      @client.user_timeline(
      :screen_name => @user.twitter_name,
      :count => 6,
      :include_entities => true
      )
  end

  def self.find_by_tag

  end

end
#
# class Tweet < ActiveRecord::Base
#   belongs_to :user
#   has_many :hashtags, :through => :tweethashes
#   attr_accessible :text
#
#
#
#   def self.get_user_tweets
#     user = User.first
#     client = TwitterOAuth::Client.new(
#         :consumer_key => "6KmZfBk2kSeqA8lgrcQhA",
#         :consumer_secret => "aWdvrK39iyt6ZImJjT4ViiqT03ejPs5uvl15SdBRqCs",
#         :token => user.auth_token,
#         :secret => user.auth_secret
#     )
#     return client
#   end
#
#   request_token = client.request_token(:oauth_callback => oauth_confirm_url)
#   #:oauth_callback required for web apps, since oauth gem by default force PIN-based flow
#   #( see http://groups.google.com/group/twitter-development-talk/browse_thread/thread/472500cfe9e7cdb9/848f834227d3e64d )
#
#
#   request_token.authorize_url
#   => http://twitter.com/oauth/authorize?oauth_token=TOKEN
# end
