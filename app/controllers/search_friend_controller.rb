class SearchFriendController < ApplicationController

  def search
    @friend = User.find_by(email: params[:friend])
    if @friend
      respond_to do |format|
        format.js { render partial: "friends/result" }
      end
    end
  end

end
