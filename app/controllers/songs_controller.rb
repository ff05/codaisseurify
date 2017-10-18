class SongsController < ApplicationController
  before_action :set_artist

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to @artist, notice: "song created"
    else
      render :new
    end
  end

  def destroy
    song = @artist.songs.find(params[:id])
    song.destroy

    redirect_to @artist
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :release_year)
  end
end
