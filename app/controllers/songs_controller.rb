class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :create, :new, :destroy]

  # GET /songs
  def index
    @songs = Song.all
  end

  # GET /songs/1
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  def create
    @song = current_user.songs.build(song_params)

    if @song.save
      redirect_to @song, notice: 'Song was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      redirect_to @song, notice: 'Song was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
    redirect_to songs_url, notice: 'Song was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_song
    @song = Song.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def song_params
    params.require(:song).permit(:title, :song_file, :thumbnail)
  end
end
