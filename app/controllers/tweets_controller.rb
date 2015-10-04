class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end
end
