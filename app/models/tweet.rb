class Tweet < ActiveRecord::Base
  attr_accessible :pic_url, :text, :tweet_id, :user_name
  before_save :parse_tweet
  validates :tweet_id, presence: true, uniqueness: true

   def parse_tweet
   		t = Twitter.status(tweet_id)
   		self.user_name = t.from_user
   		self.text = t.full_text
   		self.pic_url = t.user.profile_image_url(size = :normal)
    end

end
