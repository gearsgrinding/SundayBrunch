class SongsController < ApplicationController
require 'rspotify'

	def create

    spotify_tracks = RSpotify::Track.search(song_params[:song])
    puts spotify_tracks.nil? || spotify_tracks.empty?
    if spotify_tracks.nil? || spotify_tracks.empty?
      @song = current_user.songs.build(song_params)
    else
    @song.uri = current_user.songs.build(song_params.merge(uri: spotify_tracks[1].uri))
    end
    
    if @song.save
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def song_params
      params.require(:song).permit(:song)
    end
end
