class Admin::PlaylistsController < Admin::AdminController
  def index
      @playlists = Playlist.all
  end
  


end
