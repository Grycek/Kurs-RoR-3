class PlaylistsController < ApplicationController
  def index
      @playlists = Playlist.all
  end

  def show
      @playlists = Playlist.all
      @playlist  = Playlist.find(params[:id])
  end
  
  def new
      @playlist = Playlist.new
  end

  
  def create
      Playlist.create(params[:playlist])
      redirect_to root_path
  end


end
