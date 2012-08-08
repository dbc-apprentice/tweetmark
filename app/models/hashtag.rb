class Hashtag < ActiveRecord::Base
  attr_accessible :label
  has_many :tweets, :through => :tweethashes
end
