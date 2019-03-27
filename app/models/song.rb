# == Schema Information
#
# Table name: songs
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  title      :string
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_songs_on_user_id  (user_id)
#


class Song < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :playlists

  has_one_attached :song_file
  has_one_attached :thumbnail

  validates_presence_of :user, :title


end
