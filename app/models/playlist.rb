# == Schema Information
#
# Table name: playlists
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  song_id    :bigint(8)
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_playlists_on_song_id  (song_id)
#  index_playlists_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (song_id => songs.id)
#  fk_rails_...  (user_id => users.id)
#

class Playlist < ApplicationRecord
  belongs_to :user
  belongs_to :song
end
