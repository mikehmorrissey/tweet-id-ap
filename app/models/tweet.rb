class Tweet < ActiveRecord::Base
  attr_accessible :pic_url, :text, :tweet_id, :user_name

  validates :tweet_id, presence: true, uniqueness: true
end
