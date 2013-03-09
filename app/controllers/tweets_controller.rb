class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@tweet= Tweet.new(params[:tweet])
		t =Tweet.find_by_tweet_id(params[:tweet][:tweet_id])
		if @tweet.save
			render @tweet
		elsif t.exists?
			@tweet = t
			render @tweet
		else
			redirect_to action: "new"
		end

	end

	def show
		@tweet= Tweet.new(params[:tweet])
	end
end
