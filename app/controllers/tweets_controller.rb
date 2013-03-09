class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@tweet= Tweet.new(params[:tweet])
		t =Tweet.find_by_tweet_id(params[:tweet][:tweet_id])
		if @tweet.save
			redirect_to @tweet
		elsif !t.nil?
			@tweet = t
			redirect_to @tweet
		else
			render action: "new"
		end

	end

	def show
		@tweet= Tweet.find(params[:id])
	end
end
