class SongsController < ApplicationController
  def new
    @song = Playlist.find(params[:playlist_id]).songs.new
  end


  def create
    playlist = Playlist.find(params[:playlist_id]) 
    playlist.songs.create(params[:song])
    redirect_to playlist
  end

end
