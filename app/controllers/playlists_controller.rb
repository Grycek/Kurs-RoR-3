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
      @playlist = Playlist.create(params[:playlist])
      if @playlist.valid?
          redirect_to root_path
      else
          render :action => :new
      end
  end


end
