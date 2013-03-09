class Tweet < ActiveRecord::Base
  attr_accessible :pic_url, :text, :tweet_id, :user_name
end
