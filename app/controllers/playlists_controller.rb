class PlaylistsController < ApplicationController
  before_action :find_playlist
  def show
  end


  private

  def find_playlist
    @playlist = Playlist.find(params[:id])
  end
end
