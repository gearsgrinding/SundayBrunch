class StaticPagesController < ApplicationController

  def home
  	@song = current_user.songs.build if logged_in?
  	 @feed_items = current_user.feed.paginate(page: params[:page]) if logged_in?
  end

  def help
  end

  def about
  end


end
