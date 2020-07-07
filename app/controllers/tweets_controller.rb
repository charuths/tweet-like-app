class TweetsController < ApplicationController
  before_action :authenticate_user!

  def tweet
    @tweets = Tweet.all
    render json: @tweets, status: :ok
  end

  def post
  	@tweets = Tweet.find(params[:id])
  	render json: @tweets, status: :ok
  end
end
