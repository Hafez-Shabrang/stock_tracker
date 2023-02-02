class FriendsController < ApplicationController

  def my_friends
    @friends = current_user.friends
  end

  def create
    @add_friend = Friendship.create(user: current_user, friend_id: params[:friend].to_i)
    redirect_to my_friends_path
  end


  def destroy
    @friend = Friendship.where(user_id: current_user.id, friend_id: params[:id]).first
    if @friend.destroy
      redirect_to my_friends_path
    end
  end

end
