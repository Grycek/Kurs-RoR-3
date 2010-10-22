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
  
  
  def edit
      @playlist = Playlist.find(params[:id])
  end
  
  
  def update
      @playlist = Playlist.find(params[:id])
      if @playlist.update_attributes(params[:playlist])
          redirect_to @playlist
      else
          render :action => :new
      end
  end

  
  def destroy
      @playlist = Playlist.find(params[:id])
      @playlist.destroy
      redirect_to root_path
  end


end
