class AddUserAndSongToPlaylist < ActiveRecord::Migration[5.2]
  def change
    add_reference :playlists, :user, foreign_key: true
    add_reference :playlists, :song, foreign_key: true
  end
end
