class FriendsController < ApplicationController

  def destroy
    friend = User.find(params[:id])
    current_user_friends = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    current_user_friends.destroy
    flash[:notice] = "#{friend.first_name} was successfully removed from friends list"
    redirect_to friends_path
  end
end