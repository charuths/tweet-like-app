class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def follow_user
    user_id = User.find(params[:id]).id
    @follower = Follower.create(user_id: user_id)
    
    render json: @follower, status: :ok
  end

  def unfollow_user
    follower = Follower.find(params[:id]).id
    @unfollow = follower.destroy_all

    render json: @unfollow, status: :ok
  end
end
