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

FactoryBot.define do
  factory :song do
    
  end
end
