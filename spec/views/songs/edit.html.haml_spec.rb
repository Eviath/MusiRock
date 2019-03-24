require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  login_user

  before(:each) do
    @song = assign(:song, @user.songs.create!(title: 'Nice song title'))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do
    end
  end
end
