require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  login_user
  before(:each) do
    assign(:songs, [
      @user.songs.create!(title: 'Nice song title'),
      @user.songs.create!(title: 'Nice song title')
    ])
  end

  it "renders a list of songs" do
    render
  end
end
